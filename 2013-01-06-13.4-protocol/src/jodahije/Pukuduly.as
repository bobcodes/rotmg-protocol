package jodahije
{
[CLASS1105]   import flash.events.Event;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.Player;


   public class Pukuduly extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pukuduly(param1:BitmapData, param2:int, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(DEATH);
         this.background_=param1;
         this.accountId_=param2;
         this.charId_=param3;
         return;
      }

      public static const DEATH:String = "DEATH";

      public var background_:BitmapData;

      public var player_:Player;

      public var accountId_:int;

      public var charId_:int;
   }
[/CLASS]
}