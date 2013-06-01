package coh
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;


   public class FusionStrength extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function FusionStrength() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(Qudymasaj.qijehokyt());
         this.debiryno();
         this.kocykezem();
         return;
      }

      public static const dopok:uint = 8768801;

      public static const biko:uint = 16711680;

      public static const pujores:int = 11776947;

      public static const LOW:String = "FusionStrength.Low";

      public static const zuhejuruc:String = "FusionStrength.Bad";

      public static const vigot:String = "FusionStrength.Good";

      public static const nyfefunow:String = "FusionStrength.Great";

      public static const nihegow:String = "FusionStrength.Fantastic";

      public static const byna:String = "FusionStrength.Maxed";

      public static const NONE:String = "FusionStrength.None";

      private static const pyzifok:Number = 16;

      private static function kimog(param1:Number) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(nat(param1))
         {
            return byna;
         }
         if(param1>0.8)
         {
            return nihegow;
         }
         if(param1>0.6)
         {
            return nyfefunow;
         }
         if(param1>0.4)
         {
            return vigot;
         }
         if(param1>0.2)
         {
            return LOW;
         }
         return zuhejuruc;
      }

      private static function nat(param1:Number) : Boolean {
         return Math.abs(param1-1)<0.001;
      }

      private static function jyharevo(param1:Number) : Boolean {
         return param1<0.2;
      }

      public var wireq:Lufub;

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wireq.setStringBuilder(new Sire().setParams(NONE));
         this.wireq.setColor(pujores);
         return;
      }

      private function debiryno() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = Qudymasaj.makeText();
         _loc1_.x=pyzifok;
         _loc1_.y=this.dopeze();
         addChild(_loc1_);
         return;
      }

      private function kocykezem() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wireq=Qudymasaj.tosemucit();
         this.wireq.x=width-pyzifok;
         this.wireq.y=this.dopeze();
         this.wireq.setStringBuilder(new Sire().setParams(NONE));
         this.wireq.setColor(pujores);
         addChild(this.wireq);
         return;
      }

      private function dopeze() : Number {
         return height/2;
      }

      public function sawepe(param1:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = kimog(param1);
         this.wireq.setStringBuilder(new Sire().setParams(_loc2_));
         this.cipykusip(param1);
         return;
      }

      private function cipykusip(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(nat(param1))
         {
            this.wireq.setColor(dopok);
         }
         else
         {
            if(jyharevo(param1))
            {
               this.wireq.setColor(biko);
            }
            else
            {
               this.wireq.setColor(pujores);
            }
         }
         return;
      }
   }

}