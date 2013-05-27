package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.Event;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;


   public class Wusec extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wusec(param1:Player) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Bitmap = null;
         super();
         this.player=param1;
         var _loc2_:BitmapData = AssetLibrary.jeqycu(sed,vuvahy);
         var _loc3_:BitmapData = TextureRedrawer.redraw(_loc2_,20,true,0,0);
         _loc4_=new Bitmap(_loc3_);
         _loc4_.x=-7;
         _loc4_.y=-10;
         addChild(_loc4_);
         addEventListener(MouseEvent.MOUSE_OVER,this.pynenyg);
         addEventListener(MouseEvent.MOUSE_OUT,this.tigurymim);
         return;
      }

      public static const sed:String = "lofiInterfaceBig";

      public static const vuvahy:int = 22;

      private var vygahijor:BoostPanel;

      private var player:Player;

      private function pynenyg(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         addChild(this.vygahijor=new BoostPanel(this.player));
         this.vygahijor.cuqarybe.add(this.qorudes);
         this.qorudes();
         return;
      }

      private function qorudes() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vygahijor.x=-this.vygahijor.width;
         this.vygahijor.y=-this.vygahijor.height;
         return;
      }

      private function tigurymim(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.vygahijor)
         {
            removeChild(this.vygahijor);
         }
         return;
      }
   }

}