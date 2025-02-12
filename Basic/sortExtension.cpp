#include <iostream>
#include <algorithm>

using namespace std; 

class Student {
public:
    string name;
    int score;
    Student(string name, int score) {
        this->name = name;
        this->score = score;
    }

    bool operator <(const Student &student) const {
        return this->score < student.score;
    }
};

int main(void) {

    Student students[] = {
        Student("이준석", 50),
        Student("이준석1", 40),
        Student("이준석2", 30),
        Student("이준석3", 60),
        Student("이준석4", 80)
    };

    sort(students, students + 5);
    for(int i = 0; i < 5; i++) {
        cout << students[i].name << " ";
    }
}