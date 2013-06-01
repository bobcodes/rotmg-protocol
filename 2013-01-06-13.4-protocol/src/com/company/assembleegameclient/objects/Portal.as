package com.company.assembleegameclient.objects
{
[CLASS1122]   import flash.display.BitmapData;
   import totuhare.Qebar;
   import jutesesel.Qibigagal;
   import pudev.Sinobyf;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import warude.PortalPanel;


   public class Portal extends GameObject implements Gofa
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Portal(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         this.vyre=param1.hasOwnProperty("NexusPortal");
         this.moly=param1.hasOwnProperty("LockedPortal");
         return;
      }

      private static const fatuc:RegExp = new RegExp("(^\\s+)\\s\\(([0-9]+)\\/[0-9]+\\)");

      public var vyre:Boolean;

      public var moly:Boolean;

      public var jog:Boolean = true;

      override protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Array = name_.match(fatuc);
         var _loc2_:Qebar = new Hikymiz().makeBuilder(name_);
         var _loc3_:Sinobyf = Qibigagal.husuha().getInstance(Sinobyf);
         return _loc3_.make(_loc2_,16,16777215,true,subaquzi,true);
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super.draw(param1,param2,param3);
         if(this.vyre)
         {
            daluzacof(param1,param2);
         }
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new PortalPanel(param1,this);
      }
   }
[/CLASS]
}