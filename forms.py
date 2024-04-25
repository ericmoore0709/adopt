from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, BooleanField
from wtforms.validators import InputRequired, Optional, URL, NumberRange


class PetForm(FlaskForm):
    name = StringField('Pet name', validators=[InputRequired()])
    species = StringField('Species', validators=[Optional()])
    photo_url = StringField('Photo URL', validators=[URL(), Optional()])
    age = IntegerField("Age (Years)", validators=[
                       NumberRange(min=0), InputRequired()])
    notes = StringField("Notes", validators=[InputRequired()])
    available = BooleanField("Available", validators=[Optional()])
