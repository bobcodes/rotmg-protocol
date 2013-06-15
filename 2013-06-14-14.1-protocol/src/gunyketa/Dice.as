package gunyketa
{
   import dyca.Mes;
   import holije.Sufa;
   import holije.Lynyg;
   import holije.Kogywobuv;
   import holije.Garyfajij;
   import dyca.Sybe;
   import vibajiku.SsInternal;
   import holije.Hecatybu;
   import holije.Kij;
   import holije.Garuq;
   import holije.Kugiqofez;


   public class Dice extends Object implements Qikyri, Lonideh
   {
      public function Dice(param1:Mes, param2:Class, param3:String, param4:String) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.dym=param1;
         this.vite=param2;
         this._name=param3;
         this.kahi=param4;
         this.tunyl=true;
         this.vopojep(new Sufa(param2));
         return;
      }

      private var vite:Class;

      private var _name:String;

      private var kahi:String;

      private var dym:Mes;

      private var tunyl:Boolean;

      private var zodegu:Mes;

      private var terugik:Boolean;

      private var figi:Boolean;

      private var lop:Boolean;

      private var hihedy:Object;

      public function fezy() : Lonideh {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wila(this.vite);
         return this;
      }

      public function qyfi(param1:Class) : Lonideh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mucafawy(new Sufa(param1));
         return this;
      }

      public function wila(param1:Class) : Lonideh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mucafawy(new Lynyg(param1,this.dym));
         return this;
      }

      public function pylo(param1:Object) : Lonideh {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mucafawy(new Kogywobuv(param1));
         return this;
      }

      public function mucafawy(param1:Garyfajij) : Lonideh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.hafylewil())&&!(param1==null)&&!this.tunyl)
         {
            trace("Warning: Injector already has a mapping for "+this.kahi+".\n "+"If you have overridden this mapping intentionally you can use "+"\"injector.unmap()\" prior to your replacement mapping in order to "+"avoid seeing this message.");
         }
         this.tiveju();
         this.tunyl=false;
         this.vopojep(param1);
         this.mazy();
         return this;
      }

      public function nanybufa() : Qikyri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Garyfajij = null;
         if(!this.terugik)
         {
            _loc1_=this.bilas();
            this.tiveju();
            this.terugik=true;
            this.vopojep(_loc1_);
            this.mazy();
         }
         return this;
      }

      public function vaduzag() : Qikyri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.figi)
         {
            return this;
         }
         var _loc1_:Garyfajij = this.bilas();
         this.tiveju();
         this.figi=true;
         this.vopojep(_loc1_);
         this.mazy();
         return this;
      }

      public function cyje() : Object {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.lop)
         {
            throw new Sybe("Mapping is already sealed.");
         }
         else
         {
            this.lop=true;
            this.hihedy={};
            return this.hihedy;
         }
      }

      public function joju(param1:Object) : Dice {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.lop)
         {
            throw new Sybe("Can\'t unseal a non-sealed mapping.");
         }
         else
         {
            if(param1!==this.hihedy)
            {
               throw new Sybe("Can\'t unseal mapping without the correct key.");
            }
            else
            {
               this.lop=false;
               this.hihedy=null;
               return this;
            }
         }
      }

      public function get furerad() : Boolean {
         return this.lop;
      }

      public function hafylewil() : Boolean {
         return Boolean(this.dym.SsInternal::lylug[this.kahi]);
      }

      public function bilas() : Garyfajij {
         var _loc1_:Garyfajij = this.dym.SsInternal::lylug[this.kahi];
         while(_loc1_ is Hecatybu)
         {
            _loc1_=Hecatybu(_loc1_).provider;
         }
         return _loc1_;
      }

      public function setInjector(param1:Mes) : Dice {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==this.zodegu)
         {
            return this;
         }
         var _loc2_:Garyfajij = this.bilas();
         this.zodegu=param1;
         this.vopojep(_loc2_);
         return this;
      }

      private function vopojep(param1:Garyfajij) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.terugik)
         {
            param1=new Kij(param1);
         }
         if(this.figi)
         {
            param1=new Garuq(param1);
         }
         if(this.zodegu)
         {
            param1=new Kugiqofez(this.zodegu,param1);
         }
         this.dym.SsInternal::lylug[this.kahi]=param1;
         return;
      }

      private function daj() : void {
         throw new Sybe("Can\'t change a sealed mapping");
      }

      private function tiveju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      private function mazy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }
   }

}