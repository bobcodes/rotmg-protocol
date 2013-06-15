package com.company.assembleegameclient.objects
{
   import flash.display.BitmapData;
   import jediwip.Tunyhazo;
   import sijizoh.Duq;
   import hivysif.Pyzykyj;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fytalis.PortalPanel;


   public class Portal extends GameObject implements Gim
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Portal(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         bura=true;
         this.foqakike=param1.hasOwnProperty("NexusPortal");
         this.radonuc=param1.hasOwnProperty("LockedPortal");
         return;
      }

      private static const bumyhifaj:RegExp = new RegExp("(^\\s+)\\s\\(([0-9]+)\\/[0-9]+\\)");

      public var foqakike:Boolean;

      public var radonuc:Boolean;

      public var zamyw:Boolean = true;

      override protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Array = name_.match(bumyhifaj);
         var _loc2_:Tunyhazo = new Kuqymary().makeBuilder(name_);
         var _loc3_:Pyzykyj = Duq.pamazo().getInstance(Pyzykyj);
         return _loc3_.make(_loc2_,16,16777215,true,begatywy,true);
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super.draw(param1,param2,param3);
         if(this.foqakike)
         {
            tevacuzil(param1,param2);
         }
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new PortalPanel(param1,this);
      }
   }

}