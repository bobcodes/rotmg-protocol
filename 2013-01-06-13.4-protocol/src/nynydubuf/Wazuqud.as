package nynydubuf
{
[CLASS629]   import pogefeqeh.Wahovy;
   import bus.Vamypytum;
   import bus.Tabugu;
   import bus.Zocagy;
   import bus.Nygeles;
   import pogefeqeh.Duba;
   import tapago.SsInternal;
   import bus.Voqeborup;
   import bus.Komy;
   import bus.Depus;
   import bus.Cozyla;


   public class Wazuqud extends Object implements Lohyhiju, Pucahe
   {
      public function Wazuqud(param1:Wahovy, param2:Class, param3:String, param4:String) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.zediqecid=param1;
         this.qimopipoz=param2;
         this._name=param3;
         this.tegefar=param4;
         this.liraqiwug=true;
         this.wohavuq(new Vamypytum(param2));
         return;
      }

      private var qimopipoz:Class;

      private var _name:String;

      private var tegefar:String;

      private var zediqecid:Wahovy;

      private var liraqiwug:Boolean;

      private var ryz:Wahovy;

      private var niqyjure:Boolean;

      private var quvudifyr:Boolean;

      private var kuvuly:Boolean;

      private var qytezom:Object;

      public function fajuna() : Pucahe {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dib(this.qimopipoz);
         return this;
      }

      public function kagipe(param1:Class) : Pucahe {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hawak(new Vamypytum(param1));
         return this;
      }

      public function dib(param1:Class) : Pucahe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hawak(new Tabugu(param1,this.zediqecid));
         return this;
      }

      public function zoru(param1:Object) : Pucahe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hawak(new Zocagy(param1));
         return this;
      }

      public function hawak(param1:Nygeles) : Pucahe {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.pakeso())&&!(param1==null)&&!this.liraqiwug)
         {
            trace("Warning: Injector already has a mapping for "+this.tegefar+".\n "+"If you have overridden this mapping intentionally you can use "+"\"injector.unmap()\" prior to your replacement mapping in order to "+"avoid seeing this message.");
         }
         this.zyh();
         this.liraqiwug=false;
         this.wohavuq(param1);
         this.hylomonu();
         return this;
      }

      public function wohy() : Lohyhiju {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nygeles = null;
         if(!this.niqyjure)
         {
            _loc1_=this.hukos();
            this.zyh();
            this.niqyjure=true;
            this.wohavuq(_loc1_);
            this.hylomonu();
         }
         return this;
      }

      public function rihu() : Lohyhiju {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.quvudifyr)
         {
            return this;
         }
         var _loc1_:Nygeles = this.hukos();
         this.zyh();
         this.quvudifyr=true;
         this.wohavuq(_loc1_);
         this.hylomonu();
         return this;
      }

      public function cusykaqem() : Object {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kuvuly)
         {
            throw new Duba("Mapping is already sealed.");
         }
         else
         {
            this.kuvuly=true;
            this.qytezom={};
            return this.qytezom;
         }
      }

      public function wucere(param1:Object) : Wazuqud {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.kuvuly)
         {
            throw new Duba("Can\'t unseal a non-sealed mapping.");
         }
         else
         {
            if(param1!==this.qytezom)
            {
               throw new Duba("Can\'t unseal mapping without the correct key.");
            }
            else
            {
               this.kuvuly=false;
               this.qytezom=null;
               return this;
            }
         }
      }

      public function get kenemicon() : Boolean {
         return this.kuvuly;
      }

      public function pakeso() : Boolean {
         return Boolean(this.zediqecid.SsInternal::favaqo[this.tegefar]);
      }

      public function hukos() : Nygeles {
         var _loc1_:Nygeles = this.zediqecid.SsInternal::favaqo[this.tegefar];
         while(_loc1_ is Voqeborup)
         {
            _loc1_=Voqeborup(_loc1_).provider;
         }
         return _loc1_;
      }

      public function setInjector(param1:Wahovy) : Wazuqud {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.ryz)
         {
            return this;
         }
         var _loc2_:Nygeles = this.hukos();
         this.ryz=param1;
         this.wohavuq(_loc2_);
         return this;
      }

      private function wohavuq(param1:Nygeles) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.niqyjure)
         {
            param1=new Komy(param1);
         }
         if(this.quvudifyr)
         {
            param1=new Depus(param1);
         }
         if(this.ryz)
         {
            param1=new Cozyla(this.ryz,param1);
         }
         this.zediqecid.SsInternal::favaqo[this.tegefar]=param1;
         return;
      }

      private function viruvuza() : void {
         throw new Duba("Can\'t change a sealed mapping");
      }

      private function zyh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      private function hylomonu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }
   }
[/CLASS]
}