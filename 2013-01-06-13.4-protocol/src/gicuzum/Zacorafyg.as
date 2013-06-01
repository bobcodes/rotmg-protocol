package gicuzum
{
[CLASS1383]   import flash.display.Sprite;
   import lehih.Gogo;
   import tinava.Dab;


   public class Zacorafyg extends Sprite implements Gogo
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zacorafyg() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(this.litemiq);
         addChild(this.dur);
         this.fejysu();
         return;
      }

      public static const WIDTH:int = 20;

      public static const BEVEL:int = 4;

      public static const bykize:int = 0;

      private var pade:Dab;

      public function get gefowasep() : Dab {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.pade=(this.pade)||(new Dab(Number));
      }

      public const litemiq:Ryc = new Ryc();

      public const dur:Padimu = new Padimu();

      private var position:Number = 0;

      private var range:int;

      private var lopiv:Number;

      private var isEnabled:Boolean = true;

      public function zekan() : Boolean {
         return this.isEnabled;
      }

      public function ricodelat(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.isEnabled!=param1)
         {
            this.isEnabled=param1;
            if(param1)
            {
               this.fejysu();
            }
            else
            {
               this.finata();
            }
         }
         return;
      }

      private function fejysu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.litemiq.fejysu();
         this.litemiq.zokokof.add(this.cujulalos);
         this.dur.fejysu();
         this.dur.fub.add(this.ryvowi);
         return;
      }

      private function finata() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.litemiq.finata();
         this.litemiq.zokokof.remove(this.cujulalos);
         this.dur.finata();
         this.dur.fub.remove(this.ryvowi);
         return;
      }

      public function setSize(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.dur.rect.height=param1;
         this.litemiq.rect.height=param2;
         this.range=param2-param1-bykize*2;
         this.lopiv=1/this.range;
         this.litemiq.redraw();
         this.dur.redraw();
         this.setPosition(this.cupu());
         return;
      }

      public function letohahop() : int {
         return this.dur.rect.height;
      }

      public function bevekod() : int {
         return this.litemiq.rect.height;
      }

      public function cupu() : Number {
         return this.position;
      }

      public function setPosition(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<0)
         {
            param1=0;
         }
         else
         {
            if(param1>1)
            {
               param1=1;
            }
         }
         this.position=param1;
         this.dur.y=bykize+this.range*this.position;
         return;
      }

      private function ryvowi(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setPosition((param1-bykize)*this.lopiv);
         return;
      }

      private function cujulalos(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = this.dur.rect.height;
         var _loc3_:int = param1-_loc2_*0.5;
         var _loc4_:int = this.litemiq.rect.height-_loc2_;
         this.setPosition(_loc3_/_loc4_);
         return;
      }
   }
[/CLASS]
}