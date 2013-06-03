package com.company.assembleegameclient.map
{
[CLASS552]   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import vole.Mizy;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.BasicObject;
   import nytizak.Background;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.display.IGraphicsData;
   import flash.geom.Rectangle;
   import aaa.Parameters;
   import flash.display.Graphics;
   import com.company.assembleegameclient.util.ConditionEffect;
   import flash.filters.BlurFilter;
   import com.company.assembleegameclient.game.Tosahafu;
   import wiwojaz.Fato;
   import copeno.Lydyl;
   import com.company.assembleegameclient.objects.Vevobeb;
   import jutesesel.Qibigagal;
   import guvakipe.Civ;


   public class Map extends Vidowaty
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Map(param1:Tosahafu) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pemiho=new Vector.<BasicObject>();
         this.tasapiwa=new Vector.<int>();
         this.graphicsData_=new Vector.<IGraphicsData>();
         this.romeji=new Array();
         this.vugo=new Array();
         this.mylapeha=new Vector.<Square>();
         this.ketumuv=new Vector.<Square>();
         super();
         gs_=param1;
         bow=new Sepyv();
         pikocyv=new Hyvab();
         mapOverlay_=new Fato();
         partyOverlay_=new Lydyl(this);
         party_=new Vevobeb(this);
         quest_=new Quest(this);
         this.mygeku=Qibigagal.husuha().getInstance(Mizy);
         Qibigagal.husuha().getInstance(Civ).gameObjects=goDict_;
         return;
      }

      public static const cypukyp:String = "Cloth Bazaar";

      public static const dysib:String = "Nexus";

      public static const PET_YARD_1:String = "Pet Yard";

      public static const PET_YARD_2:String = "Pet Yard 2";

      public static const PET_YARD_3:String = "Pet Yard 3";

      public static const PET_YARD_4:String = "Pet Yard 4";

      public static const PET_YARD_5:String = "Pet Yard 5";

      public static const muqy:String = "Guild Hall";

      public static const kubajec:String = "Nexus_Explanation";

      public static const gefyt:String = "Vault";

      private static const hizap:Array = ["sortVal_","objectId_"];

      private static const qepupyk:Array = [Array.NUMERIC,Array.NUMERIC];

      protected static const tebewycev:ColorMatrixFilter = new ColorMatrixFilter([0.05,0.05,0.05,0,0,0.05,0.05,0.05,0,0,0.05,0.05,0.05,0,0,0.05,0.05,0.05,1,0]);

      protected static var sumefem:ColorTransform = new ColorTransform(255/255,55/255,0/255,0);

      private var mygeku:Mizy;

      private var dopel:Boolean = false;

      private var pemiho:Vector.<BasicObject>;

      private var tasapiwa:Vector.<int>;

      override public function setProps(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:Boolean) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         width_=param1;
         height_=param2;
         name_=param3;
         heluca=param4;
         allowPlayerTeleport_=param5;
         showDisplays_=param6;
         return;
      }

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         squares_.length=width_*height_;
         background_=Background.muse(heluca);
         if(background_!=null)
         {
            addChild(background_);
         }
         addChild(map_);
         addChild(bow);
         addChild(pikocyv);
         addChild(mapOverlay_);
         addChild(partyOverlay_);
         return;
      }

      override public function dispose() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:Square = null;
         var _loc2_:GameObject = null;
         var _loc3_:BasicObject = null;
         gs_=null;
         background_=null;
         map_=null;
         bow=null;
         pikocyv=null;
         mapOverlay_=null;
         partyOverlay_=null;
         for each (_loc1_ in rasy)
         {
            _loc1_.dispose();
         }
         rasy.length=0;
         rasy=null;
         squares_.length=0;
         squares_=null;
         for each (_loc2_ in goDict_)
         {
            _loc2_.dispose();
         }
         goDict_=null;
         for each (_loc3_ in rynequlyb)
         {
            _loc3_.dispose();
         }
         rynequlyb=null;
         merchLookup_=null;
         player_=null;
         party_=null;
         quest_=null;
         this.pemiho=null;
         this.tasapiwa=null;
         return;
      }

      override public function update(param1:int, param2:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:BasicObject = null;
         var _loc4_:* = 0;
         this.dopel=true;
         for each (_loc3_ in goDict_)
         {
            if(!_loc3_.update(param1,param2))
            {
               this.tasapiwa.push(_loc3_.objectId_);
            }
         }
         for each (_loc3_ in rynequlyb)
         {
            if(!_loc3_.update(param1,param2))
            {
               this.tasapiwa.push(_loc3_.objectId_);
            }
         }
         this.dopel=false;
         for each (_loc3_ in this.pemiho)
         {
            this.lynafum(_loc3_);
         }
         this.pemiho.length=0;
         for each (_loc4_ in this.tasapiwa)
         {
            this.birydef(_loc4_);
         }
         this.tasapiwa.length=0;
         party_.update(param1,param2);
         return;
      }

      override public function pSTopW(param1:Number, param2:Number) : Point {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Square = null;
         var _loc3_:Point = null;
         for each (_loc4_ in this.mylapeha)
         {
            if(!(_loc4_.faces_.length==0)&&(_loc4_.faces_[0].face_.contains(param1,param2)))
            {
               return new Point(_loc4_.center_.x,_loc4_.center_.y);
            }
         }
         return null;
      }

      override public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Square = null;
         var _loc4_:Square = this.getSquare(param1,param2);
         _loc4_.riwuguzal(param3);
         var _loc5_:int = param1<width_-1?param1+1:param1;
         var _loc6_:int = param2<height_-1?param2+1:param2;
         var _loc7_:int = param1>0?param1-1:param1;
         while(_loc7_<=_loc5_)
         {
            _loc8_=param2>0?param2-1:param2;
            while(_loc8_<=_loc6_)
            {
               _loc9_=_loc7_+_loc8_*width_;
               _loc10_=squares_[_loc9_];
               if(!(_loc10_==null)&&((_loc10_.props_.gagud)||!(_loc10_.tileType_==param3)))
               {
                  _loc10_.faces_.length=0;
               }
               _loc8_++;
            }
            _loc7_++;
         }
         return;
      }

      override public function addObj(param1:BasicObject, param2:Number, param3:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.x_=param2;
         param1.y_=param3;
         if(this.dopel)
         {
            this.pemiho.push(param1);
         }
         else
         {
            this.lynafum(param1);
         }
         return;
      }

      public function lynafum(param1:BasicObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!param1.addTo(this,param1.x_,param1.y_))
         {
            return;
         }
         var _loc2_:Dictionary = param1 is GameObject?goDict_:rynequlyb;
         if(_loc2_[param1.objectId_]!=null)
         {
            return;
         }
         _loc2_[param1.objectId_]=param1;
         return;
      }

      override public function removeObj(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.dopel)
         {
            this.tasapiwa.push(param1);
         }
         else
         {
            this.birydef(param1);
         }
         return;
      }

      public function birydef(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Dictionary = goDict_;
         var _loc3_:BasicObject = _loc2_[param1];
         if(_loc3_==null)
         {
            _loc2_=rynequlyb;
            _loc3_=_loc2_[param1];
            if(_loc3_==null)
            {
               return;
            }
         }
         _loc3_.removeFromMap();
         delete _loc2_[[param1]];
         return;
      }

      public function getSquare(param1:Number, param2:Number) : Square {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param1<0||param1>=width_||param2<0||param2>=height_)
         {
            return null;
         }
         var _loc3_:int = int(param1)+int(param2)*width_;
         var _loc4_:Square = squares_[_loc3_];
         if(_loc4_==null)
         {
            _loc4_=new Square(this,int(param1),int(param2));
            squares_[_loc3_]=_loc4_;
            rasy.push(_loc4_);
         }
         return _loc4_;
      }

      public function lookupSquare(param1:int, param2:int) : Square {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1<0||param1>=width_||param2<0||param2>=height_)
         {
            return null;
         }
         return squares_[param1+param2*width_];
      }

      private var graphicsData_:Vector.<IGraphicsData>;

      public var romeji:Array;

      public var vugo:Array;

      public var mylapeha:Vector.<Square>;

      public var ketumuv:Vector.<Square>;

      override public function draw(param1:Fot, param2:int) : void {
         var _loc26_:* = true;
         var _loc27_:* = false;
         var _loc6_:Square = null;
         var _loc13_:GameObject = null;
         var _loc14_:BasicObject = null;
         var _loc16_:* = 0;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Array = null;
         var _loc23_:* = NaN;
         var _loc3_:Rectangle = param1.wyly;
         x=-_loc3_.x;
         y=-_loc3_.y;
         var _loc4_:Number = (-_loc3_.y-_loc3_.height/2)/50;
         var _loc5_:Point = new Point(param1.x_+_loc4_*Math.cos(param1.angleRad_-Math.PI/2),param1.y_+_loc4_*Math.sin(param1.angleRad_-Math.PI/2));
         if(background_!=null)
         {
            background_.draw(param1,param2);
         }
         this.romeji.length=0;
         this.vugo.length=0;
         this.mylapeha.length=0;
         this.ketumuv.length=0;
         var _loc7_:int = param1.maxDist_;
         var _loc8_:int = Math.max(0,_loc5_.x-_loc7_);
         var _loc9_:int = Math.min(width_-1,_loc5_.x+_loc7_);
         var _loc10_:int = Math.max(0,_loc5_.y-_loc7_);
         var _loc11_:int = Math.min(height_-1,_loc5_.y+_loc7_);
         this.graphicsData_.length=0;
         var _loc12_:int = _loc8_;
         while(_loc12_<=_loc9_)
         {
            _loc16_=_loc10_;
            while(_loc16_<=_loc11_)
            {
               _loc6_=squares_[_loc12_+_loc16_*width_];
               if(_loc6_==null)
               {
               }
               else
               {
                  _loc17_=_loc5_.x-_loc6_.center_.x;
                  _loc18_=_loc5_.y-_loc6_.center_.y;
                  _loc19_=_loc17_*_loc17_+_loc18_*_loc18_;
                  if(_loc19_>param1.duluki)
                  {
                  }
                  else
                  {
                     _loc6_.siki=param2;
                     _loc6_.draw(this.graphicsData_,param1,param2);
                     this.mylapeha.push(_loc6_);
                     if(_loc6_.risyc!=null)
                     {
                        this.ketumuv.push(_loc6_);
                     }
                  }
               }
               _loc16_++;
            }
            _loc12_++;
         }
         for each (_loc13_ in goDict_)
         {
            _loc13_.nyz=false;
            if(_loc13_.cesulo)
            {
            }
            else
            {
               _loc6_=_loc13_.togofijo;
               if(_loc6_==null||!(_loc6_.siki==param2))
               {
               }
               else
               {
                  _loc13_.nyz=true;
                  _loc13_.vuco(param1);
                  if(_loc13_.props_.tep)
                  {
                     if(_loc13_.props_.ludebil)
                     {
                        _loc13_.draw(this.graphicsData_,param1,param2);
                     }
                     else
                     {
                        this.vugo.push(_loc13_);
                     }
                  }
                  else
                  {
                     this.romeji.push(_loc13_);
                  }
               }
            }
         }
         for each (_loc14_ in rynequlyb)
         {
            _loc14_.nyz=false;
            _loc6_=_loc14_.togofijo;
            if(_loc6_==null||!(_loc6_.siki==param2))
            {
            }
            else
            {
               _loc14_.nyz=true;
               _loc14_.vuco(param1);
               this.romeji.push(_loc14_);
            }
         }
         if(this.vugo.length>0)
         {
            this.vugo.sortOn(hizap,qepupyk);
            for each (_loc14_ in this.vugo)
            {
               _loc14_.draw(this.graphicsData_,param1,param2);
            }
         }
         this.romeji.sortOn(hizap,qepupyk);
         if(Parameters.data_.drawShadows)
         {
            for each (_loc14_ in this.romeji)
            {
               if(!_loc14_.tovemamic)
               {
               }
               else
               {
                  _loc14_.drawShadow(this.graphicsData_,param1,param2);
               }
            }
         }
         for each (_loc14_ in this.romeji)
         {
            _loc14_.draw(this.graphicsData_,param1,param2);
         }
         if(this.ketumuv.length>0)
         {
            for each (_loc6_ in this.ketumuv)
            {
               _loc6_.fubiqy(this.graphicsData_,param1,param2);
            }
         }
         if(!(player_==null)&&player_.breath_>=0&&player_.breath_<Parameters.kocacuz)
         {
            _loc20_=(Parameters.kocacuz-player_.breath_)/Parameters.kocacuz;
            _loc21_=Math.abs(Math.sin(param2/300))*0.75;
            sumefem.alphaMultiplier=_loc20_*_loc21_;
            bow.transform.colorTransform=sumefem;
            bow.visible=true;
            bow.x=_loc3_.left;
            bow.y=_loc3_.top;
         }
         else
         {
            bow.visible=false;
         }
         if(!(player_==null)&&!Parameters.pevabak)
         {
            pikocyv.visible=true;
            pikocyv.x=_loc3_.right-10;
            pikocyv.y=_loc3_.top;
         }
         else
         {
            pikocyv.visible=false;
         }
         var _loc15_:Graphics = map_.graphics;
         _loc15_.clear();
         _loc15_.drawGraphicsData(this.graphicsData_);
         map_.filters.length=0;
         if(!(player_==null)&&!((player_.condition_&ConditionEffect.qafyjylak)==0))
         {
            _loc22_=[];
            if(player_.isDrunk())
            {
               _loc23_=20+10*Math.sin(param2/1000);
               _loc22_.push(new BlurFilter(_loc23_,_loc23_));
            }
            if(player_.isBlind())
            {
               _loc22_.push(tebewycev);
            }
            map_.filters=_loc22_;
         }
         else
         {
            if(map_.filters.length>0)
            {
               map_.filters=[];
            }
         }
         mapOverlay_.draw(param1,param2);
         partyOverlay_.draw(param1,param2);
         return;
      }
   }
[/CLASS]
}