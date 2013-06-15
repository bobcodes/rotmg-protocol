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


   public class Vymu extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vymu(param1:Player) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Bitmap = null;
         super();
         this.player=param1;
         var _loc2_:BitmapData = AssetLibrary.tem(cilyl,fyse);
         var _loc3_:BitmapData = TextureRedrawer.redraw(_loc2_,20,true,0,0);
         _loc4_=new Bitmap(_loc3_);
         _loc4_.x=-7;
         _loc4_.y=-10;
         addChild(_loc4_);
         addEventListener(MouseEvent.MOUSE_OVER,this.bek);
         addEventListener(MouseEvent.MOUSE_OUT,this.lajojiro);
         return;
      }

      public static const cilyl:String = "lofiInterfaceBig";

      public static const fyse:int = 22;

      private var tosenup:BoostPanel;

      private var player:Player;

      private function bek(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(this.tosenup=new BoostPanel(this.player));
         this.tosenup.zowycu.add(this.lamyfegig);
         this.lamyfegig();
         return;
      }

      private function lamyfegig() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tosenup.x=-this.tosenup.width;
         this.tosenup.y=-this.tosenup.height;
         return;
      }

      private function lajojiro(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.tosenup)
         {
            removeChild(this.tosenup);
         }
         return;
      }
   }

}