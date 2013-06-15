package fanij
{
   import jyhyzujyw.Bagebok;
   import lemugo.Wokycuku;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Remo;
   import com.company.assembleegameclient.map.Map;


   public class Namejaja extends Object
   {
      public function Namejaja() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hash={};
         this.pets=new Vector.<Cun>();
         super();
         return;
      }

      public var bapype:Bagebok;

      public var kejisacok:Wokycuku;

      private var hash:Object;

      private var pets:Vector.<Cun>;

      private var luce:XML;

      private var type:int;

      private var mozeloho:Cun;

      public function getPetVO(param1:int) : Cun {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cun = null;
         if(this.hash[param1]!=null)
         {
            return this.hash[param1];
         }
         _loc2_=new Cun(param1);
         this.pets.push(_loc2_);
         this.hash[param1]=_loc2_;
         return _loc2_;
      }

      public function kahenovoq(param1:int) : Cun {
         return this.hash[param1];
      }

      public function jahu() : Vector.<Cun> {
         return this.pets;
      }

      public function caj(param1:Cun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pets.push(param1);
         return;
      }

      public function duqugyc(param1:Cun) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.mozeloho=param1;
         var _loc2_:SavedCharacter = this.kejisacok.gohiqu(this.kejisacok.lobuwyjer);
         if(_loc2_)
         {
            _loc2_.lojewi(this.mozeloho);
         }
         this.bapype.dispatch();
         return;
      }

      public function tigosulo() : Cun {
         return this.mozeloho;
      }

      public function wew() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:SavedCharacter = this.kejisacok.gohiqu(this.kejisacok.lobuwyjer);
         if(_loc1_)
         {
            _loc1_.lojewi(null);
         }
         this.mozeloho=null;
         this.bapype.dispatch();
         return;
      }

      public function vahunufi(param1:int) : Cun {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.mopyza(param1);
         if(_loc2_==-1)
         {
            return null;
         }
         return this.pets[_loc2_];
      }

      private function mopyza(param1:int) : int {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Cun = null;
         var _loc3_:uint = 0;
         while(_loc3_<this.pets.length)
         {
            _loc2_=this.pets[_loc3_];
            if(_loc2_.lepuve()==param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }

      public function kihabot(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.type=param1;
         this.luce=ObjectLibrary.jesycegoc(ObjectLibrary.ryqovol(param1));
         return;
      }

      public function lebozej() : uint {
         return Woho.gobipy(this.luce.@id).rarity.qyb;
      }

      public function pusijywyl() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.luce?Woho.gobipy(this.luce.@id).qyb:1;
      }

      public function feci() : int {
         return int(this.luce.Fame);
      }

      public function casoloqe() : int {
         return int(this.luce.Price);
      }

      public function kifuqim() : int {
         return this.type;
      }

      public function wasycekeh(param1:Remo) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case Map.PET_YARD_1:
            case Map.PET_YARD_2:
            case Map.PET_YARD_3:
            case Map.PET_YARD_4:
            case Map.PET_YARD_5:
               return true;
            default:
               return false;
         }
      }

      public function kuputyfu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pets.splice(this.mopyza(param1),1);
         return;
      }

      public function jinud() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hash={};
         this.pets=new Vector.<Cun>();
         this.wew();
         return;
      }
   }

}