package bokojavidu
{
   import kyco.Nun;
   import bolihe.Quqi;
   import bolihe.Raki;
   import bolihe.Cuzo;
   import bolihe.Cuwively;
   import kyco.Jugiwuly;
   import veb.SsInternal;
   import bolihe.Dodo;
   import bolihe.Mokajak;
   import bolihe.Pomyw;
   import bolihe.Neqysin;


   public class Rimot extends Object implements Duqigiwiv, Ryt
   {
      public function Rimot(param1:Nun, param2:Class, param3:String, param4:String) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.sileve=param1;
         this.cuwiqytid=param2;
         this._name=param3;
         this.sasehuqy=param4;
         this.pinynypa=true;
         this.tepycon(new Quqi(param2));
         return;
      }

      private var cuwiqytid:Class;

      private var _name:String;

      private var sasehuqy:String;

      private var sileve:Nun;

      private var pinynypa:Boolean;

      private var das:Nun;

      private var piduq:Boolean;

      private var meriwice:Boolean;

      private var sazi:Boolean;

      private var hinuhob:Object;

      public function pybe() : Ryt {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyvov(this.cuwiqytid);
         return this;
      }

      public function jotovaq(param1:Class) : Ryt {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fejubi(new Quqi(param1));
         return this;
      }

      public function lyvov(param1:Class) : Ryt {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fejubi(new Raki(param1,this.sileve));
         return this;
      }

      public function cufypy(param1:Object) : Ryt {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fejubi(new Cuzo(param1));
         return this;
      }

      public function fejubi(param1:Cuwively) : Ryt {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.dityteso())&&!(param1==null)&&!this.pinynypa)
         {
            trace("Warning: Injector already has a mapping for "+this.sasehuqy+".\n "+"If you have overridden this mapping intentionally you can use "+"\"injector.unmap()\" prior to your replacement mapping in order to "+"avoid seeing this message.");
         }
         this.nilin();
         this.pinynypa=false;
         this.tepycon(param1);
         this.kito();
         return this;
      }

      public function revudyraf() : Duqigiwiv {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cuwively = null;
         if(!this.piduq)
         {
            _loc1_=this.bazesujeq();
            this.nilin();
            this.piduq=true;
            this.tepycon(_loc1_);
            this.kito();
         }
         return this;
      }

      public function doni() : Duqigiwiv {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.meriwice)
         {
            return this;
         }
         var _loc1_:Cuwively = this.bazesujeq();
         this.nilin();
         this.meriwice=true;
         this.tepycon(_loc1_);
         this.kito();
         return this;
      }

      public function gab() : Object {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.sazi)
         {
            throw new Jugiwuly("Mapping is already sealed.");
         }
         else
         {
            this.sazi=true;
            this.hinuhob={};
            return this.hinuhob;
         }
      }

      public function qiz(param1:Object) : Rimot {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.sazi)
         {
            throw new Jugiwuly("Can\'t unseal a non-sealed mapping.");
         }
         else
         {
            if(param1!==this.hinuhob)
            {
               throw new Jugiwuly("Can\'t unseal mapping without the correct key.");
            }
            else
            {
               this.sazi=false;
               this.hinuhob=null;
               return this;
            }
         }
      }

      public function get vakazu() : Boolean {
         return this.sazi;
      }

      public function dityteso() : Boolean {
         return Boolean(this.sileve.SsInternal::votu[this.sasehuqy]);
      }

      public function bazesujeq() : Cuwively {
         var _loc1_:Cuwively = this.sileve.SsInternal::votu[this.sasehuqy];
         while(_loc1_ is Dodo)
         {
            _loc1_=Dodo(_loc1_).provider;
         }
         return _loc1_;
      }

      public function setInjector(param1:Nun) : Rimot {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.das)
         {
            return this;
         }
         var _loc2_:Cuwively = this.bazesujeq();
         this.das=param1;
         this.tepycon(_loc2_);
         return this;
      }

      private function tepycon(param1:Cuwively) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.piduq)
         {
            param1=new Mokajak(param1);
         }
         if(this.meriwice)
         {
            param1=new Pomyw(param1);
         }
         if(this.das)
         {
            param1=new Neqysin(this.das,param1);
         }
         this.sileve.SsInternal::votu[this.sasehuqy]=param1;
         return;
      }

      private function datezykat() : void {
         throw new Jugiwuly("Can\'t change a sealed mapping");
      }

      private function nilin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      private function kito() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }
   }

}