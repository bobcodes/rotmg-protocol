package com.company.assembleegameclient.map
{
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import qirola.Puvob;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.BasicObject;
   import lipesyhow.Background;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.display.IGraphicsData;
   import flash.geom.Rectangle;
   import aaa.RotmgParameters.RotmgParameters;
   import flash.display.Graphics;
   import com.company.assembleegameclient.util.ConditionEffect;
   import flash.filters.BlurFilter;
   import com.company.assembleegameclient.game.Pajemiz;
   import sudiba.Ralybyzy;
   import mybujib.Raquke;
   import com.company.assembleegameclient.objects.Viz;
   import sijizoh.Duq;
   import wahyqise.Tuco;


   public class Map extends Remo
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Map(param1:Pajemiz) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyc=new Vector.<BasicObject>();
         this.danupavoz=new Vector.<int>();
         this.graphicsData_=new Vector.<IGraphicsData>();
         this.locehof=new Array();
         this.vefonywon=new Array();
         this.vequta=new Vector.<Square>();
         this.rid=new Vector.<Square>();
         super();
         gs_=param1;
         kyf=new Kodyma();
         dob=new Kovo();
         mapOverlay_=new Ralybyzy();
         partyOverlay_=new Raquke(this);
         party_=new Viz(this);
         quest_=new Quest(this);
         this.vat=Duq.pamazo().getInstance(Puvob);
         Duq.pamazo().getInstance(Tuco).gameObjects=goDict_;
         return;
      }

      public static const sofyzuc:String = "Cloth Bazaar";

      public static const nuwykop:String = "Nexus";

      public static const PET_YARD_1:String = "Pet Yard";

      public static const PET_YARD_2:String = "Pet Yard 2";

      public static const PET_YARD_3:String = "Pet Yard 3";

      public static const PET_YARD_4:String = "Pet Yard 4";

      public static const PET_YARD_5:String = "Pet Yard 5";

      public static const cilecyzi:String = "Guild Hall";

      public static const vezavagu:String = "Nexus_Explanation";

      public static const lura:String = "Vault";

      private static const fiqocubu:Array = ["sortVal_","objectId_"];

      private static const mofylajyf:Array = [Array.NUMERIC,Array.NUMERIC];

      protected static const seweho:ColorMatrixFilter = new ColorMatrixFilter([0.05,0.05,0.05,0,0,0.05,0.05,0.05,0,0,0.05,0.05,0.05,0,0,0.05,0.05,0.05,1,0]);

      protected static var qylucequ:ColorTransform = new ColorTransform(255/255,55/255,0/255,0);

      private var vat:Puvob;

      private var sowusufar:Boolean = false;

      private var hyc:Vector.<BasicObject>;

      private var danupavoz:Vector.<int>;

      override public function setProps(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:Boolean) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         width_=param1;
         height_=param2;
         name_=param3;
         docacopo=param4;
         allowPlayerTeleport_=param5;
         showDisplays_=param6;
         return;
      }

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         squares_.length=width_*height_;
         background_=Background.fibufu(docacopo);
         if(background_!=null)
         {
            addChild(background_);
         }
         addChild(map_);
         addChild(kyf);
         addChild(dob);
         addChild(mapOverlay_);
         addChild(partyOverlay_);
         return;
      }

      override public function dispose() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:Square = null;
         var _loc2_:GameObject = null;
         var _loc3_:BasicObject = null;
         gs_=null;
         background_=null;
         map_=null;
         kyf=null;
         dob=null;
         mapOverlay_=null;
         partyOverlay_=null;
         for each (_loc1_ in vozuqyfa)
         {
            _loc1_.dispose();
         }
         vozuqyfa.length=0;
         vozuqyfa=null;
         squares_.length=0;
         squares_=null;
         for each (_loc2_ in goDict_)
         {
            _loc2_.dispose();
         }
         goDict_=null;
         for each (_loc3_ in qykufadoq)
         {
            _loc3_.dispose();
         }
         qykufadoq=null;
         merchLookup_=null;
         player_=null;
         party_=null;
         quest_=null;
         this.hyc=null;
         this.danupavoz=null;
         return;
      }

      override public function update(param1:int, param2:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:BasicObject = null;
         var _loc4_:* = 0;
         this.sowusufar=true;
         for each (_loc3_ in goDict_)
         {
            if(!_loc3_.update(param1,param2))
            {
               this.danupavoz.push(_loc3_.objectId_);
            }
         }
         for each (_loc3_ in qykufadoq)
         {
            if(!_loc3_.update(param1,param2))
            {
               this.danupavoz.push(_loc3_.objectId_);
            }
         }
         this.sowusufar=false;
         for each (_loc3_ in this.hyc)
         {
            this.vofebu(_loc3_);
         }
         this.hyc.length=0;
         for each (_loc4_ in this.danupavoz)
         {
            this.heqofet(_loc4_);
         }
         this.danupavoz.length=0;
         party_.update(param1,param2);
         return;
      }

      override public function pSTopW(param1:Number, param2:Number) : Point {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Square = null;
         var _loc3_:Point = null;
         for each (_loc4_ in this.vequta)
         {
            if(!(_loc4_.faces_.length==0)&&(_loc4_.faces_[0].face_.contains(param1,param2)))
            {
               return new Point(_loc4_.center_.x,_loc4_.center_.y);
            }
         }
         return null;
      }

      override public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Square = null;
         var _loc4_:Square = this.getSquare(param1,param2);
         _loc4_.baqosaj(param3);
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
               if(!(_loc10_==null)&&((_loc10_.props_.wyjedakad)||!(_loc10_.tileType_==param3)))
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
         if(this.sowusufar)
         {
            this.hyc.push(param1);
         }
         else
         {
            this.vofebu(param1);
         }
         return;
      }

      public function vofebu(param1:BasicObject) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!param1.addTo(this,param1.x_,param1.y_))
         {
            return;
         }
         var _loc2_:Dictionary = param1 is GameObject?goDict_:qykufadoq;
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
         if(this.sowusufar)
         {
            this.danupavoz.push(param1);
         }
         else
         {
            this.heqofet(param1);
         }
         return;
      }

      public function heqofet(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Dictionary = goDict_;
         var _loc3_:BasicObject = _loc2_[param1];
         if(_loc3_==null)
         {
            _loc2_=qykufadoq;
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
            vozuqyfa.push(_loc4_);
         }
         return _loc4_;
      }

      public function lookupSquare(param1:int, param2:int) : Square {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1<0||param1>=width_||param2<0||param2>=height_)
         {
            return null;
         }
         return squares_[param1+param2*width_];
      }

      private var graphicsData_:Vector.<IGraphicsData>;

      public var locehof:Array;

      public var vefonywon:Array;

      public var vequta:Vector.<Square>;

      public var rid:Vector.<Square>;

      override public function draw(param1:Qawosiwi, param2:int) : void {
         var _loc26_:* = false;
         var _loc27_:* = true;
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
         var _loc3_:Rectangle = param1.pajaqe;
         x=-_loc3_.x;
         y=-_loc3_.y;
         var _loc4_:Number = (-_loc3_.y-_loc3_.height/2)/50;
         var _loc5_:Point = new Point(param1.x_+_loc4_*Math.cos(param1.angleRad_-Math.PI/2),param1.y_+_loc4_*Math.sin(param1.angleRad_-Math.PI/2));
         if(background_!=null)
         {
            background_.draw(param1,param2);
         }
         this.locehof.length=0;
         this.vefonywon.length=0;
         this.vequta.length=0;
         this.rid.length=0;
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
                  if(_loc19_>param1.wycijaf)
                  {
                  }
                  else
                  {
                     _loc6_.lypof=param2;
                     _loc6_.draw(this.graphicsData_,param1,param2);
                     this.vequta.push(_loc6_);
                     if(_loc6_.duhig!=null)
                     {
                        this.rid.push(_loc6_);
                     }
                  }
               }
               _loc16_++;
            }
            _loc12_++;
         }
         for each (_loc13_ in goDict_)
         {
            _loc13_.vuci=false;
            if(_loc13_.logi)
            {
            }
            else
            {
               _loc6_=_loc13_.mizuky;
               if(_loc6_==null||!(_loc6_.lypof==param2))
               {
               }
               else
               {
                  _loc13_.vuci=true;
                  _loc13_.rinevil(param1);
                  if(_loc13_.props_.jucisywu)
                  {
                     if(_loc13_.props_.cifydas)
                     {
                        _loc13_.draw(this.graphicsData_,param1,param2);
                     }
                     else
                     {
                        this.vefonywon.push(_loc13_);
                     }
                  }
                  else
                  {
                     this.locehof.push(_loc13_);
                  }
               }
            }
         }
         for each (_loc14_ in qykufadoq)
         {
            _loc14_.vuci=false;
            _loc6_=_loc14_.mizuky;
            if(_loc6_==null||!(_loc6_.lypof==param2))
            {
            }
            else
            {
               _loc14_.vuci=true;
               _loc14_.rinevil(param1);
               this.locehof.push(_loc14_);
            }
         }
         if(this.vefonywon.length>0)
         {
            this.vefonywon.sortOn(fiqocubu,mofylajyf);
            for each (_loc14_ in this.vefonywon)
            {
               _loc14_.draw(this.graphicsData_,param1,param2);
            }
         }
         this.locehof.sortOn(fiqocubu,mofylajyf);
         if(RotmgParameters.data_.drawShadows)
         {
            for each (_loc14_ in this.locehof)
            {
               if(!_loc14_.budav)
               {
               }
               else
               {
                  _loc14_.drawShadow(this.graphicsData_,param1,param2);
               }
            }
         }
         for each (_loc14_ in this.locehof)
         {
            _loc14_.draw(this.graphicsData_,param1,param2);
         }
         if(this.rid.length>0)
         {
            for each (_loc6_ in this.rid)
            {
               _loc6_.harywekur(this.graphicsData_,param1,param2);
            }
         }
         if(!(player_==null)&&player_.breath_>=0&&player_.breath_<RotmgParameters.vimebyh)
         {
            _loc20_=(RotmgParameters.vimebyh-player_.breath_)/RotmgParameters.vimebyh;
            _loc21_=Math.abs(Math.sin(param2/300))*0.75;
            qylucequ.alphaMultiplier=_loc20_*_loc21_;
            kyf.transform.colorTransform=qylucequ;
            kyf.visible=true;
            kyf.x=_loc3_.left;
            kyf.y=_loc3_.top;
         }
         else
         {
            kyf.visible=false;
         }
         if(!(player_==null)&&!RotmgParameters.womo)
         {
            dob.visible=true;
            dob.x=_loc3_.right-10;
            dob.y=_loc3_.top;
         }
         else
         {
            dob.visible=false;
         }
         var _loc15_:Graphics = map_.graphics;
         _loc15_.clear();
         _loc15_.drawGraphicsData(this.graphicsData_);
         map_.filters.length=0;
         if(!(player_==null)&&!((player_.condition_&ConditionEffect.resydowu)==0))
         {
            _loc22_=[];
            if(player_.isDrunk())
            {
               _loc23_=20+10*Math.sin(param2/1000);
               _loc22_.push(new BlurFilter(_loc23_,_loc23_));
            }
            if(player_.isBlind())
            {
               _loc22_.push(seweho);
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

}