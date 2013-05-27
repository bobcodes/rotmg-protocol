package jebaraqeq
{
   import komawowag.Bep;
   import __AS3__.vec.Vector;
   import komawowag.Becepog;


   public class Pybe extends Object implements Bep
   {
      public function Pybe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var gakyvyno:uint = 16;

      public function get hite() : uint {
         return this.gakyvyno;
      }

      public function set hite(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gakyvyno=param1;
         return;
      }

      private const sukyjo:Vector.<Bep> = new Vector.<Bep>();

      public function peroq(param1:Object) : Becepog {
         return new Sav(param1,this);
      }

      public function rutudamy(param1:Bep) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sukyjo.push(param1);
         return;
      }

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:Bep = null;
         if(param2>this.gakyvyno)
         {
            return;
         }
         for each (_loc6_ in this.sukyjo)
         {
            _loc6_.log(param1,param2,param3,param4,param5);
         }
         return;
      }
   }

}