package cejyva
{
[CLASS1548]   import tinava.Dab;
   import __AS3__.vec.Vector;
   import flash.events.Event;


   public class Revaz extends Object
   {
      public function Revaz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zanylajaj=new Vector.<String>();
         super();
         return;
      }

      private const piko:Dab = new Dab();

      private var vit:Qopatir;

      private var zanylajaj:Vector.<String>;

      public function add(param1:Qopatir, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vit=param1;
         this.zanylajaj.push(param2);
         param1.addEventListener(param2,this.syko);
         return;
      }

      private function syko(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         for each (_loc2_ in this.zanylajaj)
         {
            this.vit.removeEventListener(_loc2_,this.syko);
         }
         this.vit.gif().dispatch();
         return;
      }

      public function gif() : Dab {
         return this.piko;
      }
   }
[/CLASS]
}