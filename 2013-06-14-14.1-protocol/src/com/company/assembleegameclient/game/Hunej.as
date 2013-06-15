package com.company.assembleegameclient.game
{
   import dicyl.Purocumi;


   public class Hunej extends Object
   {
      public function Hunej() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var silalifys:Purocumi;

      public var tiroqaji:Boolean;

      public function zowijecys(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tiroqaji=param1;
         this.silalifys.dispatch();
         return;
      }
   }

}