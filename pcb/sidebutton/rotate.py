import numpy as np
import math  as m
import sys

def rotate(theta, x, y):
    rad = m.radians(theta)
    rmat = np.array([
        [m.cos(rad), -m.sin(rad)],
        [m.sin(rad),  m.cos(rad)]
        ])
    xy = np.dot(rmat, np.array([[x],[y]]))
    print ('x: {0} y: {1}'.format(xy[0][0], xy[1][0]))

if __name__ == '__main__':
    rotate(float(sys.argv[1]), float(sys.argv[2]), float(sys.argv[3]))
