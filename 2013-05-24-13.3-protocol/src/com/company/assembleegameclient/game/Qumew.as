package com.company.assembleegameclient.game
{
   import zubamyki.Sywyvu;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import pepyca.Depagy;
   import aaa.rotmg.config.UserConfig;
   import jag.Giq;


   public class Qumew extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qumew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.fyve=Giq.kid().getInstance(Sywyvu);
         return;
      }

      private static const picuhebi:int = 60*1000;

      private static const vyjalumyc:int = 10;

      private static const gigyby:int = 15;

      private static const fyrug:int = 20;

      public var gs_:GameSprite = null;

      public var keto:int = 0;

      private var fyve:Sywyvu;

      public function start(param1:GameSprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_=param1;
         this.keto=0;
         this.gs_.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.gs_.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      public function update(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.keto;
         this.keto=this.keto+param1;
         if(this.keto<vyjalumyc*picuhebi)
         {
            return false;
         }
         if(this.keto>=vyjalumyc*picuhebi&&_loc2_<vyjalumyc*picuhebi)
         {
            this.fyve.dispatch(this.cakigaw());
            return false;
         }
         if(this.keto>=gigyby*picuhebi&&_loc2_<gigyby*picuhebi)
         {
            this.fyve.dispatch(this.lykoten());
            return false;
         }
         if(this.keto>=fyrug*picuhebi&&_loc2_<fyrug*picuhebi)
         {
            this.fyve.dispatch(this.qejoki());
            return true;
         }
         return false;
      }

      private function cakigaw() : Depagy {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Depagy = new Depagy();
         _loc1_.name=UserConfig.gez;
         _loc1_.text="You have been idle for "+vyjalumyc+" minutes, you will be disconnected if you are idle for "+"more than "+fyrug+" minutes.";
         return _loc1_;
      }

      private function lykoten() : Depagy {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Depagy = new Depagy();
         _loc1_.name=UserConfig.gez;
         _loc1_.text="You have been idle for "+gigyby+" minutes, you will be disconnected if you are idle for "+"more than "+fyrug+" minutes.";
         return _loc1_;
      }

      private function qejoki() : Depagy {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Depagy = new Depagy();
         _loc1_.name=UserConfig.gez;
         _loc1_.text="You have been idle for "+fyrug+" minutes, disconnecting.";
         return _loc1_;
      }

      public function stop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gs_.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.gs_.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         this.gs_=null;
         return;
      }

      private function onMouseMove(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.keto=0;
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.keto=0;
         return;
      }
   }

}