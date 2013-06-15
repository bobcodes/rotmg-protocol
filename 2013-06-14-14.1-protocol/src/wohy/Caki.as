package wohy
{
   import flash.display.BitmapData;
   import fanij.Cun;
   import __AS3__.vec.Vector;


   public class Caki extends Object
   {
      public function Caki() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var diry:BitmapData;

      public var name:String;

      public var pet:Cun;

      public var jek:Vector.<int>;

      public var monyn:Vector.<int>;

      public var rygy:Number;

      public var pig:int;

      public var guildName:String;

      public var qogaze:int;

      public var rank:int = -1;

      public function tudamuz(param1:Caki) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.name==this.name&&this.rygy==param1.rygy&&this.pig==param1.pig;
      }

      public function toqifiba(param1:Caki) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.pig>param1.pig||this.pig==param1.pig&&this.rygy<param1.rygy;
      }
   }

}