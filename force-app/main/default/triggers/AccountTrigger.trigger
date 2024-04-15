trigger AccountTrigger on Account ( before insert ) {
  System.debug(' Trigger before insert event. ');
  System.debug(' Hello World!! ');
  System.debug(' Heyya ');
}