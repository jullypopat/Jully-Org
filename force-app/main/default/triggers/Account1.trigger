trigger Account1 on Account (before insert) {
    for(Account record: Trigger.new) {
             record.Ownership='Public';   
    }
}