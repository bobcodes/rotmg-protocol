package fomykuq
{
[CLASS137]   import tecif.Kajehe;
   import hygo.allOf;
   import cakiqen.instanceOf;
   import hygo.not;
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   import pogefeqeh.Wahovy;
   import bikyvym.Voduzak;
   import bikyvym.Gejoqolu;
   import bikyvym.Tihoc;
   import bikyvym.Cedymynet;


   public class Zeso extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zeso(param1:Cedymynet) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.qod=param1.viqelo;
         this.vuwir=param1.diruboli(this);
         this.peq(instanceOf(Class),this.qutogir);
         this.peq(qut,this.nulolagiz);
         param1.sutu.addEventListener(Gejoqolu.nyhyginul,this.initialize,false,-100);
         return;
      }

      private static const qut:Kajehe = allOf(instanceOf(Object),not(instanceOf(Class)),not(instanceOf(DisplayObject)));

      private const pubutahic:String = Sedubali.create(Zeso);

      private const gef:ObjectProcessor = new ObjectProcessor();

      private const mavezory:Dictionary = new Dictionary();

      private const rifemeze:Array = [];

      private var qod:Wahovy;

      private var vuwir:Voduzak;

      private var lyp:Boolean;

      public function zet(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.mavezory[param1])
         {
            this.mavezory[param1]=true;
            this.gef.nibi(param1);
         }
         return;
      }

      public function peq(param1:Kajehe, param2:Function) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gef.jihobe(param1,param2);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function initialize(param1:Gejoqolu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.lyp)
         {
            this.lyp=true;
            this.suhyna();
         }
         return;
      }

      private function qutogir(param1:Class) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.lyp)
         {
            this.vuwir.debug("Already initialized. Instantiating config class {0}",[param1]);
            this.ryquqifi(param1);
         }
         else
         {
            this.vuwir.debug("Not yet initialized. Queuing config class {0}",[param1]);
            this.rifemeze.push(param1);
         }
         return;
      }

      private function nulolagiz(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.lyp)
         {
            this.vuwir.debug("Already initialized. Injecting into config object {0}",[param1]);
            this.nibi(param1);
         }
         else
         {
            this.vuwir.debug("Not yet initialized. Queuing config object {0}",[param1]);
            this.rifemeze.push(param1);
         }
         return;
      }

      private function suhyna() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Object = null;
         for each (_loc1_ in this.rifemeze)
         {
            if(_loc1_ is Class)
            {
               this.vuwir.debug("Now initializing. Instantiating config class {0}",[_loc1_]);
               this.ryquqifi(_loc1_ as Class);
            }
            else
            {
               this.vuwir.debug("Now initializing. Injecting into config object {0}",[_loc1_]);
               this.nibi(_loc1_);
            }
         }
         this.rifemeze.length=0;
         return;
      }

      private function ryquqifi(param1:Class) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Tihoc = this.qod.getInstance(param1) as Tihoc;
         return;
      }

      private function nibi(param1:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qod.banubeq(param1);
         var _loc2_:Tihoc = param1 as Tihoc;
         return;
      }
   }
[/CLASS]
}