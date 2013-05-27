package qazoz
{
   import flash.display.Sprite;
   import wujahega.Tira;
   import tulunyno.Hugyqufyq;


   public class Mibifose extends Sprite implements Tira
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mibifose() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(this.bojupafyk);
         addChild(this.savywu);
         this.gyp();
         return;
      }

      public static const WIDTH:int = 20;

      public static const BEVEL:int = 4;

      public static const pyzifok:int = 0;

      private var lypazo:Hugyqufyq;

      public function get lyneqop() : Hugyqufyq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.lypazo=(this.lypazo)||(new Hugyqufyq(Number));
      }

      public const bojupafyk:Qememinyv = new Qememinyv();

      public const savywu:Dygomuwu = new Dygomuwu();

      private var position:Number = 0;

      private var range:int;

      private var zuficed:Number;

      private var isEnabled:Boolean = true;

      public function susik() : Boolean {
         return this.isEnabled;
      }

      public function refedo(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.isEnabled!=param1)
         {
            this.isEnabled=param1;
            if(param1)
            {
               this.gyp();
            }
            else
            {
               this.sasamyq();
            }
         }
         return;
      }

      private function gyp() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bojupafyk.gyp();
         this.bojupafyk.siperu.add(this.lufizo);
         this.savywu.gyp();
         this.savywu.qotiw.add(this.huv);
         return;
      }

      private function sasamyq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bojupafyk.sasamyq();
         this.bojupafyk.siperu.remove(this.lufizo);
         this.savywu.sasamyq();
         this.savywu.qotiw.remove(this.huv);
         return;
      }

      public function setSize(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.savywu.rect.height=param1;
         this.bojupafyk.rect.height=param2;
         this.range=param2-param1-pyzifok*2;
         this.zuficed=1/this.range;
         this.bojupafyk.redraw();
         this.savywu.redraw();
         this.setPosition(this.qiko());
         return;
      }

      public function numugyvur() : int {
         return this.savywu.rect.height;
      }

      public function sapagag() : int {
         return this.bojupafyk.rect.height;
      }

      public function qiko() : Number {
         return this.position;
      }

      public function setPosition(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         this.savywu.y=pyzifok+this.range*this.position;
         return;
      }

      private function huv(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setPosition((param1-pyzifok)*this.zuficed);
         return;
      }

      private function lufizo(param1:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = this.savywu.rect.height;
         var _loc3_:int = param1-_loc2_*0.5;
         var _loc4_:int = this.bojupafyk.rect.height-_loc2_;
         this.setPosition(_loc3_/_loc4_);
         return;
      }
   }

}