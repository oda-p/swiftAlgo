#include <iostream>

using namespace std; 

int main() {
    int i, j, tmp;

    int arr[10] = {1, 10, 5, 8, 7, 6, 4, 3, 2, 9};
    for(i=0; i<9; i++) {
        j = i;
        while (arr[j] > arr[j+1]) {
            tmp = arr[j];
            arr[j] = arr[j+1];
            arr[j+1] = tmp;
            j--; 
        }
    }

    for(i=0; i<10; i++){
        cout << arr[i] << " ";
    }
}