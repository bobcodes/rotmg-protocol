package com.company.assembleegameclient.objects
{
[CLASS1290]   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import tusidywuq.Zacu;
   import koqeko.Kevut;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import guvakipe.Rakawidu;
   import totuhare.Zufi;
   import barotuvy.GTween;
   import jysadypus.Banapekur;
   import __AS3__.vec.Vector;
   import pigeguwo.Jazyv;
   import pigeguwo.EquipmentToolTip;
   import zohom.Jenag;
   import com.company.ui.Remyl;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.map.Fot;
   import jutesesel.Qibigagal;


   public class Merchant extends SellableObject implements Gofa
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Merchant(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.his=new ColorTransform(1,1,1,1);
         this.addSpeechBalloon=Qibigagal.husuha().getInstance(Zacu);
         this.riquneg=Qibigagal.husuha().getInstance(Kevut);
         super(param1);
         wywag=true;
         return;
      }

      private static const likepicit:int = 0;

      private static const dazyzis:int = 1;

      private static const wezen:int = 2;

      private static const gesu:int = 3;

      private static const seqafuf:int = 4;

      private static const T:Number = 1;

      private static const kybuziz:Matrix = new function():Matrix
                                                  {
                                                  var _loc1_:* = new Matrix();
                                                  _loc1_.translate(10,5);
                                                  return _loc1_;
                                                  }();

      public var ritu:int = -1;

      public var dunof:int = -1;

      public var bojozomi:int = -1;

      public var hupahufud:int = 0;

      public var merchandiseTexture_:BitmapData = null;

      public var gur:int = 0;

      public var alpha_:Number = 1.0;

      private var addSpeechBalloon:Zacu;

      private var riquneg:Kevut;

      override public function setPrice(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.setPrice(param1);
         this.gur=0;
         return;
      }

      override public function setRankReq(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.setRankReq(param1);
         this.gur=0;
         return;
      }

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!super.addTo(param1,param2,param3))
         {
            return false;
         }
         param1.merchLookup_[new IntPoint(x_,y_)]=this;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:IntPoint = new IntPoint(x_,y_);
         if(map_.merchLookup_[_loc1_]==this)
         {
            map_.merchLookup_[_loc1_]=null;
         }
         super.removeFromMap();
         return;
      }

      public function cezymum(param1:int) : Rakawidu {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Zufi = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         switch(null)
         {
            case dazyzis:
               _loc2_=new Zufi().setParams("Merchant.new");
               _loc3_=15132390;
               _loc4_=16777215;
               _loc5_=5931045;
               break;
            case wezen:
               if(this.bojozomi==0)
               {
                  _loc2_=new Zufi().setParams("Merchant.goingSoon");
               }
               else
               {
                  if(this.bojozomi==1)
                  {
                     _loc2_=new Zufi().setParams("Merchant.goingInOneMinute");
                  }
                  else
                  {
                     _loc2_=new Zufi().setParams("Merchant.goingInNMinutes",{minutes:this.bojozomi});
                  }
               }
               _loc3_=5973542;
               _loc4_=16549442;
               _loc5_=16549442;
               break;
            case gesu:
               _loc2_=new Zufi().setParams("Merchant.limitedStock",{count:this.dunof});
               _loc3_=5973542;
               _loc4_=16549442;
               _loc5_=16549442;
               break;
            case seqafuf:
               _loc2_=new Zufi().setParams("Merchant.discount",{discount:this.hupahufud});
               _loc3_=6324275;
               _loc4_=16777103;
               _loc5_=16777103;
               break;
            default:
               return null;
         }
         _loc2_.suhuvy(this.riquneg);
         return new Rakawidu(this,_loc2_.getString(),_loc3_,1,_loc4_,1,_loc5_,6,true,false);
      }

      private var qokudicyc:Boolean = true;

      private var qusym:int = 0;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc5_:GTween = null;
         var _loc6_:GTween = null;
         super.update(param1,param2);
         if(this.qokudicyc)
         {
            if(this.bojozomi==2147483647)
            {
               this.alpha_=0.0;
               _loc5_=new GTween(this,0.5*T,{alpha_:1});
               _loc6_=new GTween(this,0.5*T,{size_:150},{ease:Banapekur.pevedu});
               _loc6_.jydal=new GTween(this,0.5*T,{size_:100},{ease:Banapekur.pekizaq});
               _loc6_.jydal.paused=true;
            }
            this.qokudicyc=false;
         }
         this.gur=this.gur-param2;
         if(this.gur>0)
         {
            return true;
         }
         this.gur=5000;
         var _loc3_:Vector.<int> = new Vector.<int>();
         if(this.bojozomi==2147483647)
         {
            _loc3_.push(dazyzis);
         }
         else
         {
            if(this.bojozomi>=0&&this.bojozomi<=5)
            {
               _loc3_.push(wezen);
            }
         }
         if(this.dunof>=1&&this.dunof<=2)
         {
            _loc3_.push(gesu);
         }
         if(this.hupahufud>0)
         {
            _loc3_.push(seqafuf);
         }
         if(_loc3_.length==0)
         {
            return true;
         }
         this.qusym=++this.qusym%_loc3_.length;
         var _loc4_:int = _loc3_[this.qusym];
         this.addSpeechBalloon.dispatch(this.cezymum(_loc4_));
         return true;
      }

      override public function soldObjectName() : String {
         return ObjectLibrary.mafiwape[this.ritu];
      }

      override public function soldObjectInternalName() : String {
         var _loc1_:XML = ObjectLibrary.zedij[this.ritu];
         return _loc1_.@id.toString();
      }

      override public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new EquipmentToolTip(this.ritu,map_.player_,-1,Jenag.NPC);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Remyl = null;
         var _loc1_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.ritu,80,true);
         var _loc2_:XML = ObjectLibrary.zedij[this.ritu];
         if(_loc2_.hasOwnProperty("Doses"))
         {
            _loc1_=_loc1_.clone();
            _loc3_=new Remyl(12,16777215,false,0,0);
            _loc3_.text=String(_loc2_.Doses);
            _loc3_.mojymak();
            _loc1_.draw(_loc3_,kybuziz);
         }
         return _loc1_;
      }

      public function getTex1Id(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = ObjectLibrary.zedij[this.ritu];
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = ObjectLibrary.zedij[this.ritu];
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

      private var his:ColorTransform;

      override protected function getTexture(param1:Fot, param2:int) : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.alpha_==1&&size_==100)
         {
            return this.merchandiseTexture_;
         }
         var _loc3_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.ritu,size_,false,false);
         if(this.alpha_!=1)
         {
            this.his.alphaMultiplier=this.alpha_;
            _loc3_.colorTransform(_loc3_.rect,this.his);
         }
         return _loc3_;
      }

      public function setMerchandiseType(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ritu=param1;
         this.merchandiseTexture_=ObjectLibrary.getRedrawnTextureFromType(this.ritu,100,false);
         return;
      }
   }
[/CLASS]
}