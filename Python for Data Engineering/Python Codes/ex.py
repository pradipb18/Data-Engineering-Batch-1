

class Bird:
    def __init__(self,name):
        self.name=name

    def print_info(self):
        print('This bird is :',self.name)

    def fly(self):
        print('the bird can fly')


class Shalik(Bird):
    def __init__(self,name,color,charater):

        super().__init__(name)
        self.color=color
        self.charater=charater

    def print_info(self):

        super().print_info()
        print('color of bird is :',self.color)
        print('Character of bird is :',self.charater)

    def fly(self):
        print('the bird can fly')

obj_Shalik=Shalik('Shalik','black','not good')
obj_Shalik.fly()
obj_Shalik.print_info()

