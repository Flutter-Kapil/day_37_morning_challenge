// Container With Most Water
// Given n non-negative integers a1, a2, ..., an , where each represents a point
// at coordinate (i, ai). n vertical lines are drawn such that the two endpoints
// of line i is at (i, ai) and (i, 0). Find two lines, which together with
// x-axis forms a container, such that the container contains the most water.
//
// Note: You may not slant the container and n is at least 2.
// Image URL: https://s3-lc-upload.s3.amazonaws.com/uploads/2018/07/17/question_11.jpg

// The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7].
// In this case, the max area of water (blue section) the container can contain is 49.

int maxArea(List containers){
  List area=[];
  for(int i=1;i<containers.length;i++){
    for(int j=0;j<i;j++){
      if(containers[j]<containers[i]){
        area.add(containers[j]*(i-j));
      }else{
        area.add(containers[i]*(i-j));
      }
    }
  }
  return area.reduce((curr, next) => curr > next? curr: next);
}

///----------------------------------
main() {
  print(maxArea([1,8,6,2,5,4,8,3,7]));
  print(maxArea([4,8,6,7,6,5]));

}
