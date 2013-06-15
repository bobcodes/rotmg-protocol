package com.company.assembleegameclient.appengine
{
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Hekisona;
   import com.company.assembleegameclient.util.Jiqefatok;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Zurawi;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.parameters.Parameters;
   import fanij.Cun;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import sijizoh.Duq;
   import fanij.Namejaja;


   public class SavedCharacter extends Object
   {
      public function SavedCharacter(param1:XML, param2:String) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:Cun = null;
         super();
         this.cuho=param1;
         this.name_=param2;
         if(this.cuho.hasOwnProperty("Pet"))
         {
            _loc3_=new XML(this.cuho.Pet);
            _loc4_=_loc3_.@instanceId;
            _loc5_=Duq.pamazo().getInstance(Namejaja).getPetVO(_loc4_);
            _loc5_.apply(_loc3_);
            this.lojewi(_loc5_);
         }
         return;
      }

      public static function getImage(param1:SavedCharacter, param2:XML, param3:int, param4:int, param5:Number, param6:Boolean, param7:Boolean) : BitmapData {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc8_:Jiqefatok = Hekisona.woseku(String(param2.AnimatedTexture.File),int(param2.AnimatedTexture.Index));
         var _loc9_:Kebinuhi = _loc8_.imageFromDir(param3,param4,param5);
         var _loc10_:int = param1!=null?param1.tex1():null;
         var _loc11_:int = param1!=null?param1.tex2():null;
         var _loc12_:BitmapData = TextureRedrawer.resize(_loc9_.image_,_loc9_.mask_,100,false,_loc10_,_loc11_);
         _loc12_=TextureRedrawer.outlineGlow(_loc12_,0,0);
         if(!param6)
         {
            _loc12_=Zurawi.kymyr(_loc12_,new ColorTransform(0,0,0,0.5,0,0,0,0));
         }
         else
         {
            if(!param7)
            {
               _loc12_=Zurawi.kymyr(_loc12_,new ColorTransform(0.75,0.75,0.75,1,0,0,0,0));
            }
         }
         return _loc12_;
      }

      public static function sokaqobod(param1:SavedCharacter, param2:SavedCharacter) : Number {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Number = Parameters.data_.charIdUseMap.hasOwnProperty(param1.charId())?Parameters.data_.charIdUseMap[param1.charId()]:0.0;
         var _loc4_:Number = Parameters.data_.charIdUseMap.hasOwnProperty(param2.charId())?Parameters.data_.charIdUseMap[param2.charId()]:0.0;
         if(_loc3_!=_loc4_)
         {
            return _loc4_-_loc3_;
         }
         return param2.hilulimez()-param1.hilulimez();
      }

      public var cuho:XML;

      public var name_:String = null;

      private var pet:Cun;

      public function charId() : int {
         return int(this.cuho.@id);
      }

      public function name() : String {
         return this.name_;
      }

      public function objectType() : int {
         return int(this.cuho.ObjectType);
      }

      public function skinType() : int {
         return int(this.cuho.Texture);
      }

      public function level() : int {
         return int(this.cuho.Level);
      }

      public function tex1() : int {
         return int(this.cuho.Tex1);
      }

      public function tex2() : int {
         return int(this.cuho.Tex2);
      }

      public function hilulimez() : int {
         return int(this.cuho.Exp);
      }

      public function fame() : int {
         return int(this.cuho.CurrentFame);
      }

      public function kygyba() : String {
         return ObjectLibrary.kipanudad[this.objectType()];
      }

      public function getPetVO() : Cun {
         return this.pet;
      }

      public function lojewi(param1:Cun) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pet=param1;
         return;
      }
   }

}