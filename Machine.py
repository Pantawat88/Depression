import tensorflow as tf
import numpy as np
from tensorflow.keras import Sequential
from tensorflow.keras.layers import Dense

model = Sequential([Dense(unit=1, input_shape=[1])])
model.compile(optimizer='sgd', loss='mean_aquared_error')

