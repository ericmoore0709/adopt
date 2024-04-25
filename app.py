from flask import Flask, render_template, redirect, request
from models import Pet, db, connect_db
import os
from dotenv import load_dotenv
from forms import PetForm
from uuid import uuid4

load_dotenv('.env')

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URI')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True
app.config['SECRET_KEY'] = str(uuid4())

with app.app_context():
    connect_db(app)
    db.create_all()


@app.get('/')
def index():
    return redirect('/all')


@app.get('/all')
def list():
    pets: list[Pet] = Pet.query.all()
    return render_template('pets/list.html', pets=pets)


@app.get('/<int:id>')
def details(id: int):
    pet: Pet = Pet.query.get(id)
    return render_template('pets/details.html', pet=pet)


@app.get('/new')
def displayNew():
    form = PetForm()
    return render_template('pets/new.html', form=form)


@app.post('/new')
def processNew():
    form = PetForm(request.form)
    if not form.validate_on_submit():
        return render_template("pets/new.html", form=form)

    name = form.name.data
    species = form.species.data
    photo_url = form.photo_url.data
    age = form.age.data
    notes = form.notes.data
    available = form.available.data

    pet: Pet = Pet(name=name, species=species, photo_url=photo_url,
                   age=age, notes=notes, available=available)

    db.session.add(pet)
    db.session.commit()

    return redirect('/all')


@app.get('/<int:id>/edit')
def displayEdit(id: int):
    pet: Pet = Pet.query.get(id)
    form = PetForm(obj=pet)
    return render_template('pets/edit.html', form=form)


@app.post('/<int:id>/edit')
def processEdit(id: int):
    pet: Pet = Pet.query.get(id)

    form = PetForm(obj=pet)
    if not form.validate_on_submit():
        return render_template("pets/edit.html", form=form)

    name = form.name.data
    species = form.species.data
    photo_url = form.photo_url.data
    age = form.age.data
    notes = form.notes.data
    available = form.available.data

    pet.name = name
    pet.species = species
    pet.photo_url = photo_url
    pet.age = age
    pet.notes = notes
    pet.available = available

    db.session.add(pet)
    db.session.commit()

    return redirect('/' + str(id))


@app.post('/<int:id>/delete')
def delete(id: int):
    pet: Pet = Pet.query.get(id)

    db.session.delete(pet)
    db.session.commit()

    return redirect('/all')
