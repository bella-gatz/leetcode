package interview;
class Solution {
    public int removeElement(int[] nums, int val) {
        int k = nums.length;
        int first = 0;
        int last = nums.length - 1;
        for (int i = 0; i < nums.length; i++) {
            int curr = nums[first];
            if (curr == val) {
                int temp = nums[last];
                nums[last] = curr;
                nums[first] = temp;
                k = k - 1;
                last--;
            } else {
                first++;
            }
        }
        return k;
    }
}

// ✅ passed 150 test cases!
// two pointer problem