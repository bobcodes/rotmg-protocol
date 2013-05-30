package com.company.assembleegameclient.objects
{
   import flash.display.BitmapData;
   import nec.Zirewe;
   import jag.Giq;
   import movimet.Jetadopuc;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import vaqob.PortalPanel;


   public class Portal extends GameObject implements Putafyhil
   {

      public function Portal(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         this.fys=param1.hasOwnProperty("NexusPortal");
         this.jyqasowan=param1.hasOwnProperty("LockedPortal");
         return;
      }

      private static const fisenol:RegExp = new RegExp("(^\\s+)\\s\\(([0-9]+)\\/[0-9]+\\)");

      public var fys:Boolean;

      public var jyqasowan:Boolean;

      public var hyti:Boolean = true;

      override protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Array = name_.match(fisenol);
         var _loc2_:Zirewe = new Picowi().makeBuilder(name_);
         var _loc3_:Jetadopuc = Giq.kid().getInstance(Jetadopuc);
         return _loc3_.make(_loc2_,16,16777215,true,qafywo,true);
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super.draw(param1,param2,param3);
         if(this.fys)
         {
            tuvoc(param1,param2);
         }
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new PortalPanel(param1,this);
      }
   }

}