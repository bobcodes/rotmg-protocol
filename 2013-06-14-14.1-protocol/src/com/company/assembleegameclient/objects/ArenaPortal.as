package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fytalis.ArenaPortalPanel;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import flash.display.BitmapData;
   import jediwip.Vofezuzy;
   import jediwip.Tunyhazo;
   import sijizoh.Duq;
   import hivysif.Pyzykyj;


   public class ArenaPortal extends Portal implements Gim
   {
      public function ArenaPortal(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         bura=true;
         name_="";
         return;
      }

      override public function getPanel(param1:GameSprite) : Panel {
         return new ArenaPortalPanel(param1,this);
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super.draw(param1,param2,param3);
         tevacuzil(param1,param2);
         return;
      }

      override protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Tunyhazo = new Vofezuzy(name_);
         var _loc2_:Pyzykyj = Duq.pamazo().getInstance(Pyzykyj);
         return _loc2_.make(_loc1_,16,16777215,true,begatywy,true);
      }
   }

}