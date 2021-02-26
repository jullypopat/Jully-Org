trigger t1 on Lead (before insert) {
   for(Lead record: Trigger.new) {
         record.Rating='Hot';   

}

}