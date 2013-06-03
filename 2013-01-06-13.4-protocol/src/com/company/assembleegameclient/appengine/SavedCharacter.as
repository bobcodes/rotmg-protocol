package com.company.assembleegameclient.appengine
{
[CLASS887]   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Pecipaham;
   import com.company.assembleegameclient.util.Huroj;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Dyzonoto;
   import flash.geom.ColorTransform;
   import aaa.Parameters;
   import qypupet.Vuravipyg;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import jutesesel.Qibigagal;
   import qypupet.Tuhyfutos;


   public class SavedCharacter extends Object
   {
      public function SavedCharacter(param1:XML, param2:String) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:Vuravipyg = null;
         super();
         this.puju=param1;
         this.name_=param2;
         if(this.puju.hasOwnProperty("Pet"))
         {
            _loc3_=new XML(this.puju.Pet);
            _loc4_=_loc3_.@instanceId;
            _loc5_=Qibigagal.husuha().getInstance(Tuhyfutos).getPetVO(_loc4_);
            _loc5_.apply(_loc3_);
            this.rofuqa(_loc5_);
         }
         return;
      }

      public static function getImage(param1:SavedCharacter, param2:XML, param3:int, param4:int, param5:Number, param6:Boolean, param7:Boolean) : BitmapData {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc8_:Huroj = Pecipaham.jujagikan(String(param2.AnimatedTexture.File),int(param2.AnimatedTexture.Index));
         var _loc9_:Gejugut = _loc8_.imageFromDir(param3,param4,param5);
         var _loc10_:int = param1!=null?param1.tex1():null;
         var _loc11_:int = param1!=null?param1.tex2():null;
         var _loc12_:BitmapData = TextureRedrawer.resize(_loc9_.image_,_loc9_.mask_,100,false,_loc10_,_loc11_);
         _loc12_=TextureRedrawer.outlineGlow(_loc12_,0,0);
         if(!param6)
         {
            _loc12_=Dyzonoto.zategokog(_loc12_,new ColorTransform(0,0,0,0.5,0,0,0,0));
         }
         else
         {
            if(!param7)
            {
               _loc12_=Dyzonoto.zategokog(_loc12_,new ColorTransform(0.75,0.75,0.75,1,0,0,0,0));
            }
         }
         return _loc12_;
      }

      public static function zedonog(param1:SavedCharacter, param2:SavedCharacter) : Number {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Number = Parameters.data_.charIdUseMap.hasOwnProperty(param1.charId())?Parameters.data_.charIdUseMap[param1.charId()]:0.0;
         var _loc4_:Number = Parameters.data_.charIdUseMap.hasOwnProperty(param2.charId())?Parameters.data_.charIdUseMap[param2.charId()]:0.0;
         if(_loc3_!=_loc4_)
         {
            return _loc4_-_loc3_;
         }
         return param2.wacefa()-param1.wacefa();
      }

      public var puju:XML;

      public var name_:String = null;

      private var pet:Vuravipyg;

      public function charId() : int {
         return int(this.puju.@id);
      }

      public function name() : String {
         return this.name_;
      }

      public function objectType() : int {
         return int(this.puju.ObjectType);
      }

      public function skinType() : int {
         return int(this.puju.Texture);
      }

      public function level() : int {
         return int(this.puju.Level);
      }

      public function tex1() : int {
         return int(this.puju.Tex1);
      }

      public function tex2() : int {
         return int(this.puju.Tex2);
      }

      public function wacefa() : int {
         return int(this.puju.Exp);
      }

      public function fame() : int {
         return int(this.puju.CurrentFame);
      }

      public function tafetes() : String {
         return ObjectLibrary.mafiwape[this.objectType()];
      }

      public function getPetVO() : Vuravipyg {
         return this.pet;
      }

      public function rofuqa(param1:Vuravipyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pet=param1;
         return;
      }
   }
[/CLASS]
}