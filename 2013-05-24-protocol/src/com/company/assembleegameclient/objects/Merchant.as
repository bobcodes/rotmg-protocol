package com.company.assembleegameclient.objects
{
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import zubamyki.Mogedut;
   import byzany.Nagumy;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import cuwyg.Dyqy;
   import nec.Sire;
   import dilywopavy.GTween;
   import jiguwo.Cenojoryt;
   import __AS3__.vec.Vector;
   import povopito.Ryduwi;
   import povopito.EquipmentToolTip;
   import tys.Febij;
   import com.company.ui.Sytubyvyg;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.map.Wypyj;
   import jag.Giq;


   public class Merchant extends SellableObject implements Putafyhil
   {
      public function Merchant(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hoqy=new ColorTransform(1,1,1,1);
         this.addSpeechBalloon=Giq.kid().getInstance(Mogedut);
         this.vypyvehet=Giq.kid().getInstance(Nagumy);
         super(param1);
         tar=true;
         return;
      }

      private static const fupem:int = 0;

      private static const pysaz:int = 1;

      private static const surela:int = 2;

      private static const homijit:int = 3;

      private static const diridohe:int = 4;

      private static const T:Number = 1;

      private static const tihomedyz:Matrix = new function():Matrix
                                                    {
                                                    var _loc1_:* = new Matrix();
                                                    _loc1_.translate(10,5);
                                                    return _loc1_;
                                                    }();

      public var qibebur:int = -1;

      public var kigewo:int = -1;

      public var virati:int = -1;

      public var nyryd:int = 0;

      public var merchandiseTexture_:BitmapData = null;

      public var nedyr:int = 0;

      public var alpha_:Number = 1.0;

      private var addSpeechBalloon:Mogedut;

      private var vypyvehet:Nagumy;

      override public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.setPrice(param1);
         this.nedyr=0;
         return;
      }

      override public function setRankReq(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.setRankReq(param1);
         this.nedyr=0;
         return;
      }

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!super.addTo(param1,param2,param3))
         {
            return false;
         }
         param1.merchLookup_[new IntPoint(x_,y_)]=this;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:IntPoint = new IntPoint(x_,y_);
         if(map_.merchLookup_[_loc1_]==this)
         {
            map_.merchLookup_[_loc1_]=null;
         }
         super.removeFromMap();
         return;
      }

      public function kyn(param1:int) : Dyqy {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Sire = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         switch(param1)
         {
            case pysaz:
               _loc2_=new Sire().setParams("Merchant.new");
               _loc3_=15132390;
               _loc4_=16777215;
               _loc5_=5931045;
               break;
            case surela:
               if(this.virati==0)
               {
                  _loc2_=new Sire().setParams("Merchant.goingSoon");
               }
               else
               {
                  if(this.virati==1)
                  {
                     _loc2_=new Sire().setParams("Merchant.goingInOneMinute");
                  }
                  else
                  {
                     _loc2_=new Sire().setParams("Merchant.goingInNMinutes",{minutes:this.virati});
                  }
               }
               _loc3_=5973542;
               _loc4_=16549442;
               _loc5_=16549442;
               break;
            case homijit:
               _loc2_=new Sire().setParams("Merchant.limitedStock",{count:this.kigewo});
               _loc3_=5973542;
               _loc4_=16549442;
               _loc5_=16549442;
               break;
            case diridohe:
               _loc2_=new Sire().setParams("Merchant.discount",{discount:this.nyryd});
               _loc3_=6324275;
               _loc4_=16777103;
               _loc5_=16777103;
               break;
            default:
               return null;
         }
         _loc2_.menyhaky(this.vypyvehet);
         return new Dyqy(this,_loc2_.getString(),_loc3_,1,_loc4_,1,_loc5_,6,true,false);
      }

      private var wykyza:Boolean = true;

      private var rovuvac:int = 0;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:GTween = null;
         var _loc6_:GTween = null;
         super.update(param1,param2);
         if(this.wykyza)
         {
            if(this.virati==2147483647)
            {
               this.alpha_=0.0;
               _loc5_=new GTween(this,0.5*T,{alpha_:1});
               _loc6_=new GTween(this,0.5*T,{size_:150},{ease:Cenojoryt.lerery});
               _loc6_.civebad=new GTween(this,0.5*T,{size_:100},{ease:Cenojoryt.gup});
               _loc6_.civebad.paused=true;
            }
            this.wykyza=false;
         }
         this.nedyr=this.nedyr-param2;
         if(this.nedyr>0)
         {
            return true;
         }
         this.nedyr=5000;
         var _loc3_:Vector.<int> = new Vector.<int>();
         if(this.virati==2147483647)
         {
            _loc3_.push(pysaz);
         }
         else
         {
            if(this.virati>=0&&this.virati<=5)
            {
               _loc3_.push(surela);
            }
         }
         if(this.kigewo>=1&&this.kigewo<=2)
         {
            _loc3_.push(homijit);
         }
         if(this.nyryd>0)
         {
            _loc3_.push(diridohe);
         }
         if(_loc3_.length==0)
         {
            return true;
         }
         this.rovuvac=++this.rovuvac%_loc3_.length;
         var _loc4_:int = _loc3_[this.rovuvac];
         this.addSpeechBalloon.dispatch(this.kyn(_loc4_));
         return true;
      }

      override public function soldObjectName() : String {
         return ObjectLibrary.fajocyd[this.qibebur];
      }

      override public function soldObjectInternalName() : String {
         var _loc1_:XML = ObjectLibrary.tem[this.qibebur];
         return _loc1_.@id.toString();
      }

      override public function getTooltip() : Ryduwi {
         var _loc1_:Ryduwi = new EquipmentToolTip(this.qibebur,map_.player_,-1,Febij.NPC);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Sytubyvyg = null;
         var _loc1_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.qibebur,80,true);
         var _loc2_:XML = ObjectLibrary.tem[this.qibebur];
         if(_loc2_.hasOwnProperty("Doses"))
         {
            _loc1_=_loc1_.clone();
            _loc3_=new Sytubyvyg(12,16777215,false,0,0);
            _loc3_.text=String(_loc2_.Doses);
            _loc3_.nuji();
            _loc1_.draw(_loc3_,tihomedyz);
         }
         return _loc1_;
      }

      public function getTex1Id(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = ObjectLibrary.tem[this.qibebur];
         if(_loc2_==null)
         {
            return param1;
         }
         if(_loc2_.Activate=="Dye"&&(_loc2_.hasOwnProperty("Tex1")))
         {
            return int(_loc2_.Tex1);
         }
         return param1;
      }

      public function getTex2Id(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = ObjectLibrary.tem[this.qibebur];
         if(_loc2_==null)
         {
            return param1;
         }
         if(_loc2_.Activate=="Dye"&&(_loc2_.hasOwnProperty("Tex2")))
         {
            return int(_loc2_.Tex2);
         }
         return param1;
      }

      private var hoqy:ColorTransform;

      override protected function getTexture(param1:Wypyj, param2:int) : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.alpha_==1&&size_==100)
         {
            return this.merchandiseTexture_;
         }
         var _loc3_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.qibebur,size_,false,false);
         if(this.alpha_!=1)
         {
            this.hoqy.alphaMultiplier=this.alpha_;
            _loc3_.colorTransform(_loc3_.rect,this.hoqy);
         }
         return _loc3_;
      }

      public function setMerchandiseType(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qibebur=param1;
         this.merchandiseTexture_=ObjectLibrary.getRedrawnTextureFromType(this.qibebur,100,false);
         return;
      }
   }

}