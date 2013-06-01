package qypupet
{
[CLASS945]   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Huroj;
   import tinava.Dab;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Pecipaham;


   public class Vuravipyg extends Object
   {
      public function Vuravipyg(param1:int=undefined) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wosyjuzed=[new Zazeseca(),new Zazeseca(),new Zazeseca()];
         super();
         this.id=param1;
         this.hyg=<data/>;
         this.guky();
         return;
      }

      private static function todawacul(param1:int) : String {
         return ObjectLibrary.susozih(param1).Description;
      }

      private static function foqububu(param1:int) : String {
         return ObjectLibrary.susozih(param1).DisplayId;
      }

      public static function clone(param1:Vuravipyg) : Vuravipyg {
         var _loc2_:Vuravipyg = new Vuravipyg(param1.id);
         return _loc2_;
      }

      private var hyg:XML;

      private var id:int;

      private var type:int;

      private var rarity:String;

      private var name:String;

      private var zepi:int;

      public var wosyjuzed:Array;

      private var skinID:int;

      private var skin:Huroj;

      public const magoraqo:Dab = new Dab();

      private function guky() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Zazeseca = null;
         for each (_loc1_ in this.wosyjuzed)
         {
            _loc1_.magoraqo.add(this.kirymo);
         }
         return;
      }

      public function tofuz() : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Zazeseca = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.wosyjuzed)
         {
            if(_loc2_.level==100)
            {
               _loc1_++;
            }
         }
         return _loc1_==this.wosyjuzed.length;
      }

      private function kirymo(param1:Zazeseca) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.magoraqo.dispatch();
         return;
      }

      public function apply(param1:XML) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tyfaruko(param1);
         this.levolo(param1);
         return;
      }

      private function tyfaruko(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      public function levolo(param1:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:uint = 0;
         var _loc4_:Zazeseca = null;
         var _loc5_:* = 0;
         var _loc3_:uint = this.wosyjuzed.length;
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            _loc4_=this.wosyjuzed[_loc2_];
            _loc5_=param1.Abilities.Ability[_loc2_].@type;
            _loc4_.name=foqububu(_loc5_);
            _loc4_.description=todawacul(_loc5_);
            _loc4_.level=param1.Abilities.Ability[_loc2_].@power;
            _loc4_.points=param1.Abilities.Ability[_loc2_].@points;
            _loc2_++;
         }
         return;
      }

      public function qupohysy() : String {
         return this.hyg.Family;
      }

      public function setID(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.id=param1;
         return;
      }

      public function lecafis() : int {
         return this.id;
      }

      public function setType(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.type=param1;
         this.hyg=ObjectLibrary.zedij[this.type];
         return;
      }

      public function getType() : int {
         return this.type;
      }

      public function qupit(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rarity=Gucuqop.cep(param1).value;
         this.cazu(param1);
         this.magoraqo.dispatch();
         return;
      }

      private function cazu(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wosyjuzed[0].setUnlocked(true);
         this.wosyjuzed[1].setUnlocked(param1>=Gucuqop.puvalamu.dafeweqif);
         this.wosyjuzed[2].setUnlocked(param1>=Gucuqop.fisowybe.dafeweqif);
         return;
      }

      public function nyv() : String {
         return this.rarity;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.magoraqo.dispatch();
         return;
      }

      public function getName() : String {
         return this.name;
      }

      public function raty(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zepi=param1;
         this.magoraqo.dispatch();
         return;
      }

      public function sujyditig() : int {
         return this.zepi;
      }

      public function rug(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.skinID=param1;
         this.magoraqo.dispatch();
         return;
      }

      public function fohuzacu() : int {
         return this.skinID;
      }

      public function vobasyg() : Bitmap {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.cose();
         var _loc1_:Gejugut = this.skin.imageFromAngle(0,Huroj.wyqel,0);
         var _loc2_:int = this.rarity==Gucuqop.lavadak.value?40:80;
         var _loc3_:BitmapData = TextureRedrawer.resize(_loc1_.image_,_loc1_.mask_,_loc2_,true,0,0);
         _loc3_=TextureRedrawer.outlineGlow(_loc3_,0,0);
         return new Bitmap(_loc3_);
      }

      public function vybibu() : Gejugut {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cose();
         return this.skin?this.skin.imageFromAngle(0,Huroj.wyqel,0):null;
      }

      private function cose() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:XML = ObjectLibrary.bisera(ObjectLibrary.peboda(this.skinID));
         var _loc2_:String = _loc1_.AnimatedTexture.File;
         var _loc3_:int = _loc1_.AnimatedTexture.Index;
         this.skin=Pecipaham.jujagikan(_loc2_,_loc3_);
         return;
      }
   }
[/CLASS]
}