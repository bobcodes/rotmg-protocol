package com.company.assembleegameclient.appengine
{
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Jutot;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Zet;
   import flash.geom.ColorTransform;
   import aaa.rotmg.config.UserConfig;
   import zoroc.Bezuco;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import jag.Giq;
   import zoroc.Gecezyw;


   public class SavedCharacter extends Object
   {
      public function SavedCharacter(param1:XML, param2:String) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:Bezuco = null;
         super();
         this.jevuzuwol=param1;
         this.name_=param2;
         if(this.jevuzuwol.hasOwnProperty("Pet"))
         {
            _loc3_=new XML(this.jevuzuwol.Pet);
            _loc4_=_loc3_.@instanceId;
            _loc5_=Giq.kid().getInstance(Gecezyw).getPetVO(_loc4_);
            _loc5_.apply(_loc3_);
            this.sif(_loc5_);
         }
         return;
      }

      public static function getImage(param1:SavedCharacter, param2:XML, param3:int, param4:int, param5:Number, param6:Boolean, param7:Boolean) : BitmapData {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc8_:Zuwomuguk = Jutot.fyh(String(param2.AnimatedTexture.File),int(param2.AnimatedTexture.Index));
         var _loc9_:Biloqu = _loc8_.imageFromDir(param3,param4,param5);
         var _loc10_:int = param1!=null?param1.tex1():null;
         var _loc11_:int = param1!=null?param1.tex2():null;
         var _loc12_:BitmapData = TextureRedrawer.resize(_loc9_.image_,_loc9_.mask_,100,false,_loc10_,_loc11_);
         _loc12_=TextureRedrawer.outlineGlow(_loc12_,0,0);
         if(!param6)
         {
            _loc12_=Zet.juwyc(_loc12_,new ColorTransform(0,0,0,0.5,0,0,0,0));
         }
         else
         {
            if(!param7)
            {
               _loc12_=Zet.juwyc(_loc12_,new ColorTransform(0.75,0.75,0.75,1,0,0,0,0));
            }
         }
         return _loc12_;
      }

      public static function bynuqome(param1:SavedCharacter, param2:SavedCharacter) : Number {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Number = UserConfig.data_.charIdUseMap.hasOwnProperty(param1.charId())?UserConfig.data_.charIdUseMap[param1.charId()]:0.0;
         var _loc4_:Number = UserConfig.data_.charIdUseMap.hasOwnProperty(param2.charId())?UserConfig.data_.charIdUseMap[param2.charId()]:0.0;
         if(_loc3_!=_loc4_)
         {
            return _loc4_-_loc3_;
         }
         return param2.dymekafid()-param1.dymekafid();
      }

      public var jevuzuwol:XML;

      public var name_:String = null;

      private var pet:Bezuco;

      public function charId() : int {
         return int(this.jevuzuwol.@id);
      }

      public function name() : String {
         return this.name_;
      }

      public function objectType() : int {
         return int(this.jevuzuwol.ObjectType);
      }

      public function skinType() : int {
         return int(this.jevuzuwol.Texture);
      }

      public function level() : int {
         return int(this.jevuzuwol.Level);
      }

      public function tex1() : int {
         return int(this.jevuzuwol.Tex1);
      }

      public function tex2() : int {
         return int(this.jevuzuwol.Tex2);
      }

      public function dymekafid() : int {
         return int(this.jevuzuwol.Exp);
      }

      public function fame() : int {
         return int(this.jevuzuwol.CurrentFame);
      }

      public function lacop() : String {
         return ObjectLibrary.fajocyd[this.objectType()];
      }

      public function getPetVO() : Bezuco {
         return this.pet;
      }

      public function sif(param1:Bezuco) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pet=param1;
         return;
      }
   }

}