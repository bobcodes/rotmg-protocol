package zynuqu
{
   import lyhek.Cumezyl;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Topunu extends Object implements Cumezyl
   {
      public function Topunu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var hosifurug:Boolean;

      public var leqerat:int;

      public var accountId:int;

      public var charId:int;

      public var name:String;

      public var tokanemi:int;

      public var duhi:Vector.<int>;

      public var monyn:Vector.<int>;

      public var character:BitmapData;

      public var zeto:Boolean;

      public function sosimu() : int {
         return this.accountId;
      }

      public function gar() : int {
         return this.charId;
      }
   }

}