package com.company.assembleegameclient.game
{
   import dicyl.Mukyhokot;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import pumoc.Juc;
   import com.company.assembleegameclient.parameters.Parameters;
   import sijizoh.Duq;


   public class Banudoha extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Banudoha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.daju=Duq.pamazo().getInstance(Mukyhokot);
         return;
      }

      private static const kus:int = 60*1000;

      private static const woh:int = 10;

      private static const pokylydeg:int = 15;

      private static const wijoso:int = 20;

      public var gs_:GameSprite = null;

      public var zuwo:int = 0;

      private var daju:Mukyhokot;

      public function start(param1:GameSprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_=param1;
         this.zuwo=0;
         this.gs_.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.gs_.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      public function update(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.zuwo;
         this.zuwo=this.zuwo+param1;
         if(this.zuwo<woh*kus)
         {
            return false;
         }
         if(this.zuwo>=woh*kus&&_loc2_<woh*kus)
         {
            this.daju.dispatch(this.cywyned());
            return false;
         }
         if(this.zuwo>=pokylydeg*kus&&_loc2_<pokylydeg*kus)
         {
            this.daju.dispatch(this.zigery());
            return false;
         }
         if(this.zuwo>=wijoso*kus&&_loc2_<wijoso*kus)
         {
            this.daju.dispatch(this.zofogusoj());
            return true;
         }
         return false;
      }

      private function cywyned() : Juc {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Juc = new Juc();
         _loc1_.name=Parameters.kokapo;
         _loc1_.text="You have been idle for "+woh+" minutes, you will be disconnected if you are idle for "+"more than "+wijoso+" minutes.";
         return _loc1_;
      }

      private function zigery() : Juc {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Juc = new Juc();
         _loc1_.name=Parameters.kokapo;
         _loc1_.text="You have been idle for "+pokylydeg+" minutes, you will be disconnected if you are idle for "+"more than "+wijoso+" minutes.";
         return _loc1_;
      }

      private function zofogusoj() : Juc {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Juc = new Juc();
         _loc1_.name=Parameters.kokapo;
         _loc1_.text="You have been idle for "+wijoso+" minutes, disconnecting.";
         return _loc1_;
      }

      public function stop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gs_.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.gs_.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         this.gs_=null;
         return;
      }

      private function onMouseMove(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zuwo=0;
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zuwo=0;
         return;
      }
   }

}