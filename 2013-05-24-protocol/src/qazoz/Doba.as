package qazoz
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.rotmg.graphics.StarGraphic;
   import flash.display.Graphics;
   import flash.geom.ColorTransform;


   public class Doba extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Doba() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const bacagezy:int = 5;

      private static const halinyhu:int = 4;

      private static const cuh:int = 15;

      private static const zysohygo:uint = 2434341;

      private static const zef:uint = 8618883;

      private static const hodev:uint = 16777215;

      private const stars:Vector.<StarGraphic> = this.fizajudo();

      private const background:Sprite = this.gehepu();

      private function fizajudo() : Vector.<StarGraphic> {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vector.<StarGraphic> = this.gahirifaf();
         this.ryfo(_loc1_);
         return _loc1_;
      }

      private function gahirifaf() : Vector.<StarGraphic> {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<StarGraphic> = new Vector.<StarGraphic>(bacagezy,true);
         var _loc2_:* = 0;
         while(_loc2_<bacagezy)
         {
            _loc1_[_loc2_]=new StarGraphic();
            addChild(_loc1_[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }

      private function ryfo(param1:Vector.<StarGraphic>) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<bacagezy)
         {
            param1[_loc2_].x=halinyhu+param1[0].width*_loc2_;
            param1[_loc2_].y=halinyhu;
            _loc2_++;
         }
         return;
      }

      private function gehepu() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         this.tizyf(_loc1_.graphics);
         addChildAt(_loc1_,0);
         return _loc1_;
      }

      private function tizyf(param1:Graphics) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:StarGraphic = this.stars[0];
         var _loc3_:int = _loc2_.width*bacagezy+2*halinyhu;
         var _loc4_:int = _loc2_.height+2*halinyhu;
         param1.clear();
         param1.beginFill(zysohygo);
         param1.drawRoundRect(0,0,_loc3_,_loc4_,cuh,cuh);
         param1.endFill();
         return;
      }

      public function setStars(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<bacagezy)
         {
            this.zofy(_loc2_,param1);
            _loc2_++;
         }
         return;
      }

      private function zofy(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:StarGraphic = this.stars[param1];
         var _loc4_:ColorTransform = _loc3_.transform.colorTransform;
         _loc4_.color=param1<param2?hodev:zef;
         _loc3_.transform.colorTransform=_loc4_;
         return;
      }
   }

}