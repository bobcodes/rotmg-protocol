package com.company.assembleegameclient.objects
{
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import dicyl.Syf;
   import cycuka.Sinaf;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import wahyqise.Ziky;
   import jediwip.Kybidu;
   import buryq.GTween;
   import nyreq.Jicif;
   import __AS3__.vec.Vector;
   import mavew.Qyryl;
   import mavew.EquipmentToolTip;
   import hivaw.Woserev;
   import com.company.ui.Vovoj;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.map.Qawosiwi;
   import sijizoh.Duq;


   public class Merchant extends SellableObject implements Gim
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Merchant(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.moq=new ColorTransform(1,1,1,1);
         this.addSpeechBalloon=Duq.pamazo().getInstance(Syf);
         this.kelav=Duq.pamazo().getInstance(Sinaf);
         super(param1);
         bura=true;
         return;
      }

      private static const dyqav:int = 0;

      private static const mufo:int = 1;

      private static const hipomubam:int = 2;

      private static const kor:int = 3;

      private static const jab:int = 4;

      private static const T:Number = 1;

      private static const zotiqota:Matrix = new function():Matrix
                                                   {
                                                   [/METHOD]var [OFS6]_loc1_:* = [/OFS][OFS2]new [/OFS][OFS2]Matrix[/OFS][OFS2]([/OFS][OFS2])[/OFS];
                                                   [OFS7]_loc1_[/OFS].[OFS12]translate[/OFS][OFS12]([/OFS][OFS8]10[/OFS][OFS12],[/OFS][OFS10]5[/OFS][OFS12])[/OFS];
                                                   [OFS18]return [/OFS][OFS17]_loc1_[/OFS];
                                                   }();

      public var semy:int = -1;

      public var rybiwyzy:int = -1;

      public var hozugujyv:int = -1;

      public var fupozoqe:int = 0;

      public var merchandiseTexture_:BitmapData = null;

      public var cujis:int = 0;

      public var alpha_:Number = 1.0;

      private var addSpeechBalloon:Syf;

      private var kelav:Sinaf;

      override public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.setPrice(param1);
         this.cujis=0;
         return;
      }

      override public function setRankReq(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.setRankReq(param1);
         this.cujis=0;
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

      public function mugukeqyq(param1:int) : Ziky {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Kybidu = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         switch(null)
         {
            case mufo:
               _loc2_=new Kybidu().setParams("Merchant.new");
               _loc3_=15132390;
               _loc4_=16777215;
               _loc5_=5931045;
               break;
            case hipomubam:
               if(this.hozugujyv==0)
               {
                  _loc2_=new Kybidu().setParams("Merchant.goingSoon");
               }
               else
               {
                  if(this.hozugujyv==1)
                  {
                     _loc2_=new Kybidu().setParams("Merchant.goingInOneMinute");
                  }
                  else
                  {
                     _loc2_=new Kybidu().setParams("Merchant.goingInNMinutes",{minutes:this.hozugujyv});
                  }
               }
               _loc3_=5973542;
               _loc4_=16549442;
               _loc5_=16549442;
               break;
            case kor:
               _loc2_=new Kybidu().setParams("Merchant.limitedStock",{count:this.rybiwyzy});
               _loc3_=5973542;
               _loc4_=16549442;
               _loc5_=16549442;
               break;
            case jab:
               _loc2_=new Kybidu().setParams("Merchant.discount",{discount:this.fupozoqe});
               _loc3_=6324275;
               _loc4_=16777103;
               _loc5_=16777103;
               break;
            default:
               return null;
         }
         _loc2_.zivadova(this.kelav);
         return new Ziky(this,_loc2_.getString(),_loc3_,1,_loc4_,1,_loc5_,6,true,false);
      }

      private var kumowyh:Boolean = true;

      private var sita:int = 0;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:GTween = null;
         var _loc6_:GTween = null;
         super.update(param1,param2);
         if(this.kumowyh)
         {
            if(this.hozugujyv==2147483647)
            {
               this.alpha_=0.0;
               _loc5_=new GTween(this,0.5*T,{alpha_:1});
               _loc6_=new GTween(this,0.5*T,{size_:150},{ease:Jicif.naliwesuj});
               _loc6_.libudowab=new GTween(this,0.5*T,{size_:100},{ease:Jicif.tewesedep});
               _loc6_.libudowab.paused=true;
            }
            this.kumowyh=false;
         }
         this.cujis=this.cujis-param2;
         if(this.cujis>0)
         {
            return true;
         }
         this.cujis=5000;
         var _loc3_:Vector.<int> = new Vector.<int>();
         if(this.hozugujyv==2147483647)
         {
            _loc3_.push(mufo);
         }
         else
         {
            if(this.hozugujyv>=0&&this.hozugujyv<=5)
            {
               _loc3_.push(hipomubam);
            }
         }
         if(this.rybiwyzy>=1&&this.rybiwyzy<=2)
         {
            _loc3_.push(kor);
         }
         if(this.fupozoqe>0)
         {
            _loc3_.push(jab);
         }
         if(_loc3_.length==0)
         {
            return true;
         }
         this.sita=++this.sita%_loc3_.length;
         var _loc4_:int = _loc3_[this.sita];
         this.addSpeechBalloon.dispatch(this.mugukeqyq(_loc4_));
         return true;
      }

      override public function soldObjectName() : String {
         return ObjectLibrary.kipanudad[this.semy];
      }

      override public function soldObjectInternalName() : String {
         var _loc1_:XML = ObjectLibrary.ziq[this.semy];
         return _loc1_.@id.toString();
      }

      override public function getTooltip() : Qyryl {
         var _loc1_:Qyryl = new EquipmentToolTip(this.semy,map_.player_,-1,Woserev.NPC);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vovoj = null;
         var _loc1_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.semy,80,true);
         var _loc2_:XML = ObjectLibrary.ziq[this.semy];
         if(_loc2_.hasOwnProperty("Doses"))
         {
            _loc1_=_loc1_.clone();
            _loc3_=new Vovoj(12,16777215,false,0,0);
            _loc3_.text=String(_loc2_.Doses);
            _loc3_.dog();
            _loc1_.draw(_loc3_,zotiqota);
         }
         return _loc1_;
      }

      public function getTex1Id(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = ObjectLibrary.ziq[this.semy];
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
         var _loc2_:XML = ObjectLibrary.ziq[this.semy];
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

      private var moq:ColorTransform;

      override protected function getTexture(param1:Qawosiwi, param2:int) : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.alpha_==1&&size_==100)
         {
            return this.merchandiseTexture_;
         }
         var _loc3_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.semy,size_,false,false);
         if(this.alpha_!=1)
         {
            this.moq.alphaMultiplier=this.alpha_;
            _loc3_.colorTransform(_loc3_.rect,this.moq);
         }
         return _loc3_;
      }

      public function setMerchandiseType(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.semy=param1;
         this.merchandiseTexture_=ObjectLibrary.getRedrawnTextureFromType(this.semy,100,false);
         return;
      }
   }

}