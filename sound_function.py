# -*- coding: utf-8 -*-
"""Sound Function.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1BEtKUVxTWHc4TQlDrPG4JSQIaSqzKoM2
"""

pip install git+https://github.com/openai/whisper.git

pip install setuptools-rust

#pip install whisper

!python ‐‐version

import whisper
model = whisper.load_model("base")
#result = model.transcribe("audio.mp3")
####result = model.transcribe("/Users/pantawatthunanukul/Downloads/44.mp3")
#/Users/pantawatthunanukul/Downloads
###print(result["text"])

