trigger MD5Code on Account (before insert) {
    for(Account a:trigger.new)
    {
        String myString = a.MD5_Hexa_Code__c;
        Blob myBlob = Blob.valueOf(myString);
        Blob md5hash = Crypto.generateDigest('MD5',myBlob);
        String uniqueString = EncodingUtil.convertToHex(md5hash).substring(0,32);
        a.MD5_Hexa_Code__c=uniqueString;
      
      
    }
}