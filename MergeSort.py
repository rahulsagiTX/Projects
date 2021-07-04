def mergeSort(alist):

    if len(alist) > 1:

        #Split the array into two copies called firstMerge and secondMerge
        sort = len(alist) // 2
        firstMerge = alist[:sort]
        secondMerge = alist[sort:]

        #Invoke mergeSort function
        mergeSort(firstMerge)
        mergeSort(secondMerge)

        #Initial Indexes of the first copy, second copy, and merged array
        a = 0
        b = 0
        c = 0

        #merge elements of both copies into the merged array c. Iterates until there are no more elements that satisfy
        # the while loop. If element in firstMerge is less than the element in secondMerge, the element in firstMerge
        #is added to the newly created merged array. If not, the element goes to the right side.
        while a < len(firstMerge) and b < len(secondMerge):

            if firstMerge[a] < secondMerge[b]:

                alist[c] = firstMerge[a]
                a = a + 1

            else:
                alist[c] = secondMerge[b]
                b = b + 1

            c = c + 1

            #print("The merge so far ", alist)

        #Remaining elements in firstMerge that did not satisfy the while loop above are now merged to c
        while a < len(firstMerge):

            alist[c] = firstMerge[a]
            a = a + 1
            c = c + 1

        # Remaining elements in secondMerge that did not satisfy the first while loop are now merged to c
        while b < len(secondMerge):

            alist[c] = secondMerge[b]
            b = b + 1
            c = c + 1


#array that will be the subject of a merge sort through recursion
alist = [54,26,93,17,77,31,44,55,20]

#Invoke the mergeSort function that will now be recursed until the elements in the original array are sorted
mergeSort(alist)

#Print the sorted array
print(alist)
