package com.company.assembleegameclient.ui
{
[CLASS1072]   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.Event;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;


   public class Tawel extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tawel(param1:Player) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Bitmap = null;
         super();
         this.player=param1;
         var _loc2_:BitmapData = AssetLibrary.zovy(dyli,kutuha);
         var _loc3_:BitmapData = TextureRedrawer.redraw(_loc2_,20,true,0,0);
         _loc4_=new Bitmap(_loc3_);
         _loc4_.x=-7;
         _loc4_.y=-10;
         addChild(_loc4_);
         addEventListener(MouseEvent.MOUSE_OVER,this.fidawe);
         addEventListener(MouseEvent.MOUSE_OUT,this.zutyc);
         return;
      }

      public static const dyli:String = "lofiInterfaceBig";

      public static const kutuha:int = 22;

      private var himajudo:BoostPanel;

      private var player:Player;

      private function fidawe(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(this.himajudo=new BoostPanel(this.player));
         this.himajudo.sihusiqew.add(this.bepupa);
         this.bepupa();
         return;
      }

      private function bepupa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.himajudo.x=-this.himajudo.width;
         this.himajudo.y=-this.himajudo.height;
         return;
      }

      private function zutyc(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.himajudo)
         {
            removeChild(this.himajudo);
         }
         return;
      }
   }
[/CLASS]
}