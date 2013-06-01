package com.company.assembleegameclient.game
{
[CLASS881]   import tusidywuq.Selamehu;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import setuv.Vityvu;
   import com.company.assembleegameclient.parameters.Parameters;
   import jutesesel.Qibigagal;


   public class Mus extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mus() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.rivu=Qibigagal.husuha().getInstance(Selamehu);
         return;
      }

      private static const hobukid:int = 60*1000;

      private static const qyr:int = 10;

      private static const fihihy:int = 15;

      private static const hihopy:int = 20;

      public var gs_:GameSprite = null;

      public var virite:int = 0;

      private var rivu:Selamehu;

      public function start(param1:GameSprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_=param1;
         this.virite=0;
         this.gs_.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.gs_.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      public function update(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.virite;
         this.virite=this.virite+param1;
         if(this.virite<qyr*hobukid)
         {
            return false;
         }
         if(this.virite>=qyr*hobukid&&_loc2_<qyr*hobukid)
         {
            this.rivu.dispatch(this.tohide());
            return false;
         }
         if(this.virite>=fihihy*hobukid&&_loc2_<fihihy*hobukid)
         {
            this.rivu.dispatch(this.kukumaqa());
            return false;
         }
         if(this.virite>=hihopy*hobukid&&_loc2_<hihopy*hobukid)
         {
            this.rivu.dispatch(this.lupihumug());
            return true;
         }
         return false;
      }

      private function tohide() : Vityvu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vityvu = new Vityvu();
         _loc1_.name=Parameters.timepimow;
         _loc1_.text="You have been idle for "+qyr+" minutes, you will be disconnected if you are idle for "+"more than "+hihopy+" minutes.";
         return _loc1_;
      }

      private function kukumaqa() : Vityvu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vityvu = new Vityvu();
         _loc1_.name=Parameters.timepimow;
         _loc1_.text="You have been idle for "+fihihy+" minutes, you will be disconnected if you are idle for "+"more than "+hihopy+" minutes.";
         return _loc1_;
      }

      private function lupihumug() : Vityvu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vityvu = new Vityvu();
         _loc1_.name=Parameters.timepimow;
         _loc1_.text="You have been idle for "+hihopy+" minutes, disconnecting.";
         return _loc1_;
      }

      public function stop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gs_.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.gs_.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         this.gs_=null;
         return;
      }

      private function onMouseMove(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.virite=0;
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.virite=0;
         return;
      }
   }
[/CLASS]
}