import tensorflow as tf
import numpy as np
from tensorflow.keras import Sequential
from tensorflow.keras.layers import Dense

l0 = Dense(units=1, input_shape=[1])

model = Sequential([Dense(unit=1, input_shape=[1])])
model.compile(optimizer='sgd', loss='mean_aquared_error')

##testmodel
xs = np.array([-1.0,0.0,1.0,2.0,3.0,4.0], dtype=float)
xy = np.array([-3.0,-1.0,1.0,3.0,5.0,7.0], dtype=float)

model.fit(xs,xy,epochs = 500)

print(model.predict([10.0]))
print("Here is what i learned: {}".format(l0.get_weights()))