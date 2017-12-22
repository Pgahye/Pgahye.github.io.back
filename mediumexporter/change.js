if(program.headers) {
  console.log("---");
  console.log("layout: post");
  var userid = Object.keys(json.payload.references.User);
  console.log("author: "+userid[0]);
  console.log("url: "+story.url);
  console.log("date: "+story.date);
  process.stdout.write("tags: [");
 for(var j=0; j< Object.keys(json.payload.value.virtuals.tags).length; j++){
  process.stdout.write(json.payload.value.virtuals.tags[j].name);
  if(j != Object.keys(json.payload.value.virtuals.tags).length-1){
     process.stdout.write(", ");
  }
 }
  console.log(" ]");
  console.log("---");
  console.log(program.separator);
}
