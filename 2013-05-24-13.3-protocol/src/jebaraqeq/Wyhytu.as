package jebaraqeq
{
   import cuba.Waha;
   import lusyhadyz.allOf;
   import kyd.instanceOf;
   import lusyhadyz.not;
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   import kyco.Nun;
   import komawowag.Becepog;
   import komawowag.Kuzyw;
   import komawowag.Silikyta;
   import komawowag.Net;


   public class Wyhytu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wyhytu(param1:Net) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.pub=param1.cemohoqal;
         this.hycekuj=param1.peroq(this);
         this.syqesoliz(instanceOf(Class),this.kititihoc);
         this.syqesoliz(hujucy,this.vovyvoba);
         param1.fyf.addEventListener(Kuzyw.hyga,this.initialize,false,-100);
         return;
      }

      private static const hujucy:Waha = allOf(instanceOf(Object),not(instanceOf(Class)),not(instanceOf(DisplayObject)));

      private const rafegimak:String = Fivyjysej.create(Wyhytu);

      private const kuvev:ObjectProcessor = new ObjectProcessor();

      private const mude:Dictionary = new Dictionary();

      private const byfop:Array = [];

      private var pub:Nun;

      private var hycekuj:Becepog;

      private var qoso:Boolean;

      public function nufynu(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.mude[param1])
         {
            this.mude[param1]=true;
            this.kuvev.vim(param1);
         }
         return;
      }

      public function syqesoliz(param1:Waha, param2:Function) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kuvev.nulidyp(param1,param2);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function initialize(param1:Kuzyw) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.qoso)
         {
            this.qoso=true;
            this.nupobah();
         }
         return;
      }

      private function kititihoc(param1:Class) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.qoso)
         {
            this.hycekuj.debug("Already initialized. Instantiating config class {0}",[param1]);
            this.lukokaf(param1);
         }
         else
         {
            this.hycekuj.debug("Not yet initialized. Queuing config class {0}",[param1]);
            this.byfop.push(param1);
         }
         return;
      }

      private function vovyvoba(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qoso)
         {
            this.hycekuj.debug("Already initialized. Injecting into config object {0}",[param1]);
            this.vim(param1);
         }
         else
         {
            this.hycekuj.debug("Not yet initialized. Queuing config object {0}",[param1]);
            this.byfop.push(param1);
         }
         return;
      }

      private function nupobah() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         for each (_loc1_ in this.byfop)
         {
            if(_loc1_ is Class)
            {
               this.hycekuj.debug("Now initializing. Instantiating config class {0}",[_loc1_]);
               this.lukokaf(_loc1_ as Class);
            }
            else
            {
               this.hycekuj.debug("Now initializing. Injecting into config object {0}",[_loc1_]);
               this.vim(_loc1_);
            }
         }
         this.byfop.length=0;
         return;
      }

      private function lukokaf(param1:Class) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Silikyta = this.pub.getInstance(param1) as Silikyta;
         return;
      }

      private function vim(param1:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.pub.zudihap(param1);
         var _loc2_:Silikyta = param1 as Silikyta;
         return;
      }
   }

}