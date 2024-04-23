from flask import Flask, render_template, redirect, request
from models import Pet, db, connect_db
import os
from dotenv import load_dotenv

load_dotenv('.env')

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URI')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True

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
    return render_template('pets/new.html')


@app.post('/new')
def processNew():
    return redirect('/all')


@app.get('/<int:id>/edit')
def displayEdit(id: int):
    pet: Pet = Pet.query.get(id)
    return render_template('pets/edit.html', pet=pet)


@app.post('/<int:id>/edit')
def processEdit(id: int):
    pet: Pet = Pet.query.get(id)
    return redirect('/all')


@app.post('/<int:id>/delete')
def delete(id: int):
    pet: Pet = Pet.query.get(id)
    return redirect('/all')
