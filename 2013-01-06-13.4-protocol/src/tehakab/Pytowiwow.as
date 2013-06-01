package tehakab
{
[CLASS783]   import __AS3__.vec.Vector;


   public class Pytowiwow extends Object
   {
      public function Pytowiwow() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const pikyremo:Vector.<Copaqufiv> = new Vector.<Copaqufiv>(0);

      private const map:Object = {};

      private var sutadeba:Copaqufiv;

      private var wuradaryl:Copaqufiv;

      private var kev:int;

      public function volykatij() : int {
         return this.pikyremo.length;
      }

      public function hasemuma() : Copaqufiv {
         return this.sutadeba;
      }

      public function nina() : Copaqufiv {
         return this.wuradaryl;
      }

      public function ligopud(param1:int) : Copaqufiv {
         return this.pikyremo[param1];
      }

      public function nutehe(param1:Copaqufiv, param2:Boolean=false) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.copysa.add(this.zoqyfoto);
         this.pikyremo.push(param1);
         this.map[param1.id]=param1;
         this.sor(param1);
         if(param2)
         {
            this.sutadeba=param1;
            if(!this.wuradaryl)
            {
               this.wuradaryl=param1;
               param1.ryb(true);
            }
         }
         else
         {
            if(param1.bawy())
            {
               this.wuradaryl=param1;
            }
         }
         return;
      }

      private function zoqyfoto(param1:Copaqufiv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1.bawy())&&!(this.wuradaryl==param1))
         {
            this.wuradaryl=param1;
         }
         return;
      }

      public function woni(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Copaqufiv = null;
         this.kev=param1;
         for each (_loc2_ in this.pikyremo)
         {
            this.sor(_loc2_);
         }
         return;
      }

      private function sor(param1:Copaqufiv) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.farydowu().nepoqo())
         {
            param1.setState(this.suda(param1));
         }
         return;
      }

      private function suda(param1:Copaqufiv) : Dur {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kev>=param1.unlockLevel)
         {
            return Dur.PURCHASABLE;
         }
         return Dur.LOCKED;
      }

      public function vobasyg(param1:int) : Copaqufiv {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.map[param1])||(this.sutadeba);
      }

      public function pyzaqice() : Vector.<Copaqufiv> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Copaqufiv = null;
         var _loc1_:Vector.<Copaqufiv> = new Vector.<Copaqufiv>();
         for each (_loc2_ in this.pikyremo)
         {
            if(_loc2_.farydowu()!=Dur.UNLISTED)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
[/CLASS]
}