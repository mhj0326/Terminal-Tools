import numpy as pd

train = pd.read_csv("./train.csv")
test = pd.read_csv("./test.csv")

# train 데이터 살펴보기
train.describe(include="all")
