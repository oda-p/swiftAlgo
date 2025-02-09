#include <iostream>

using namespace std;

int arr[10] = {3, 7, 8, 1, 5, 9, 6, 10, 2 ,4};
int number = 10;

void quickSort(int *data, int start, int end) {
    if (start >= end) { // 원소가 1개인경우
        return;
    }

    int pivot = start; 
    int i = start + 1;
    int j = end;
    int tmp;

    while(i <= j) { // 엇갈릴때까지
        while (data[i] <= data[pivot]) { // pivot 값보다 큰값 나올때까지
            i++;
        }
        while (data[j] >= data[pivot] && j > start) { // pivot 값보다 작은 값 나올때까지
            j--;
        }

        if (i > j) { // 엇갈린 상태면 pivot과 교체
            tmp = data[j];
            data[j] = data[pivot];
            data[pivot] = tmp;
        } else {
            tmp = data[j];
            data[j] = data[i];
            data[i] = tmp;
        }
    }

    quickSort(data, start, j - 1);
    quickSort(data, j + 1, end);
}

int main() {
    quickSort(arr, 0, number - 1);
    int i;
    for (i = 0; i<10; i++) {
        cout << arr[i] << " ";
    }
}