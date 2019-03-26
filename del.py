# -*- coding: utf-8 -*-
"""
Created on Tue Mar 26 21:44:20 2019

@author: nuzulristy
"""

import operator
x = {1: 2, 3: 4, 4: 3, 2: 1, 0: 0}
sorted_x = sorted(x.items(), key=operator.itemgetter(1))