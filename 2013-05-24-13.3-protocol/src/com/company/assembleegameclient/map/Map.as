package com.company.assembleegameclient.map
{
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import tavo.Leno;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.BasicObject;
   import luzy.Background;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.display.IGraphicsData;
   import flash.geom.Rectangle;
   import aaa.rotmg.config.UserConfig;
   import flash.display.Graphics;
   import com.company.assembleegameclient.util.ConditionEffect;
   import flash.filters.BlurFilter;
   import com.company.assembleegameclient.game.Nukomesih;
   import wyrovu.Tivehy;
   import fezeker.Haji;
   import com.company.assembleegameclient.objects.Miv;
   import jag.Giq;
   import cuwyg.Nihuvi;


   public class Map extends Wuwa
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Map(param1:Nukomesih) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wonum=new Vector.<BasicObject>();
         this.topufifus=new Vector.<int>();
         this.graphicsData_=new Vector.<IGraphicsData>();
         this.lahivykir=new Array();
         this.lodajum=new Array();
         this.bujoby=new Vector.<Square>();
         this.nisys=new Vector.<Square>();
         super();
         gs_=param1;
         myqu=new Pyladulin();
         lyb=new Vuwu();
         mapOverlay_=new Tivehy();
         partyOverlay_=new Haji(this);
         party_=new Miv(this);
         quest_=new Quest(this);
         this.jel=Giq.kid().getInstance(Leno);
         Giq.kid().getInstance(Nihuvi).gameObjects=goDict_;
         return;
      }

      public static const nyz:String = "Cloth Bazaar";

      public static const copyvy:String = "Nexus";

      public static const PET_YARD_1:String = "Pet Yard";

      public static const PET_YARD_2:String = "Pet Yard 2";

      public static const PET_YARD_3:String = "Pet Yard 3";

      public static const PET_YARD_4:String = "Pet Yard 4";

      public static const PET_YARD_5:String = "Pet Yard 5";

      public static const zisuhidi:String = "Guild Hall";

      public static const qevahoba:String = "Nexus_Explanation";

      public static const dajamy:String = "Vault";

      private static const noweseruf:Array = ["sortVal_","objectId_"];

      private static const netybyry:Array = [Array.NUMERIC,Array.NUMERIC];

      protected static const bigiwavofe:ColorMatrixFilter = new ColorMatrixFilter([0.05,0.05,0.05,0,0,0.05,0.05,0.05,0,0,0.05,0.05,0.05,0,0,0.05,0.05,0.05,1,0]);

      protected static var zud:ColorTransform = new ColorTransform(255/255,55/255,0/255,0);

      private var jel:Leno;

      private var rujunu:Boolean = false;

      private var wonum:Vector.<BasicObject>;

      private var topufifus:Vector.<int>;

      override public function setProps(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         width_=param1;
         height_=param2;
         name_=param3;
         kypodap=param4;
         allowPlayerTeleport_=param5;
         showDisplays_=param6;
         return;
      }

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         squares_.length=width_*height_;
         background_=Background.johyrubo(kypodap);
         if(background_!=null)
         {
            addChild(background_);
         }
         addChild(map_);
         addChild(myqu);
         addChild(lyb);
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
         myqu=null;
         lyb=null;
         mapOverlay_=null;
         partyOverlay_=null;
         for each (_loc1_ in lilytiwim)
         {
            _loc1_.dispose();
         }
         lilytiwim.length=0;
         lilytiwim=null;
         squares_.length=0;
         squares_=null;
         for each (_loc2_ in goDict_)
         {
            _loc2_.dispose();
         }
         goDict_=null;
         for each (_loc3_ in tulitezu)
         {
            _loc3_.dispose();
         }
         tulitezu=null;
         merchLookup_=null;
         player_=null;
         party_=null;
         quest_=null;
         this.wonum=null;
         this.topufifus=null;
         return;
      }

      override public function update(param1:int, param2:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:BasicObject = null;
         var _loc4_:* = 0;
         this.rujunu=true;
         for each (_loc3_ in goDict_)
         {
            if(!_loc3_.update(param1,param2))
            {
               this.topufifus.push(_loc3_.objectId_);
            }
         }
         for each (_loc3_ in tulitezu)
         {
            if(!_loc3_.update(param1,param2))
            {
               this.topufifus.push(_loc3_.objectId_);
            }
         }
         this.rujunu=false;
         for each (_loc3_ in this.wonum)
         {
            this.pofyhy(_loc3_);
         }
         this.wonum.length=0;
         for each (_loc4_ in this.topufifus)
         {
            this.pijad(_loc4_);
         }
         this.topufifus.length=0;
         party_.update(param1,param2);
         return;
      }

      override public function pSTopW(param1:Number, param2:Number) : Point {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Square = null;
         var _loc3_:Point = null;
         for each (_loc4_ in this.bujoby)
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
         _loc4_.solop(param3);
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
               if(!(_loc10_==null)&&((_loc10_.props_.tusazoqog)||!(_loc10_.tileType_==param3)))
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
         if(this.rujunu)
         {
            this.wonum.push(param1);
         }
         else
         {
            this.pofyhy(param1);
         }
         return;
      }

      public function pofyhy(param1:BasicObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!param1.addTo(this,param1.x_,param1.y_))
         {
            return;
         }
         var _loc2_:Dictionary = param1 is GameObject?goDict_:tulitezu;
         if(_loc2_[param1.objectId_]!=null)
         {
            return;
         }
         _loc2_[param1.objectId_]=param1;
         return;
      }

      override public function removeObj(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.rujunu)
         {
            this.topufifus.push(param1);
         }
         else
         {
            this.pijad(param1);
         }
         return;
      }

      public function pijad(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Dictionary = goDict_;
         var _loc3_:BasicObject = _loc2_[param1];
         if(_loc3_==null)
         {
            _loc2_=tulitezu;
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
            lilytiwim.push(_loc4_);
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

      public var lahivykir:Array;

      public var lodajum:Array;

      public var bujoby:Vector.<Square>;

      public var nisys:Vector.<Square>;

      override public function draw(param1:Wypyj, param2:int) : void {
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
         var _loc3_:Rectangle = param1.cykuwito;
         x=-_loc3_.x;
         y=-_loc3_.y;
         var _loc4_:Number = (-_loc3_.y-_loc3_.height/2)/50;
         var _loc5_:Point = new Point(param1.x_+_loc4_*Math.cos(param1.angleRad_-Math.PI/2),param1.y_+_loc4_*Math.sin(param1.angleRad_-Math.PI/2));
         if(background_!=null)
         {
            background_.draw(param1,param2);
         }
         this.lahivykir.length=0;
         this.lodajum.length=0;
         this.bujoby.length=0;
         this.nisys.length=0;
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
                  if(_loc19_>param1.fuv)
                  {
                  }
                  else
                  {
                     _loc6_.ton=param2;
                     _loc6_.draw(this.graphicsData_,param1,param2);
                     this.bujoby.push(_loc6_);
                     if(_loc6_.sykidymy!=null)
                     {
                        this.nisys.push(_loc6_);
                     }
                  }
               }
               _loc16_++;
            }
            _loc12_++;
         }
         for each (_loc13_ in goDict_)
         {
            _loc13_.qofeleqir=false;
            if(_loc13_.hojucope)
            {
            }
            else
            {
               _loc6_=_loc13_.garatecif;
               if(_loc6_==null||!(_loc6_.ton==param2))
               {
               }
               else
               {
                  _loc13_.qofeleqir=true;
                  _loc13_.cude(param1);
                  if(_loc13_.props_.pabaqoho)
                  {
                     if(_loc13_.props_.gevonob)
                     {
                        _loc13_.draw(this.graphicsData_,param1,param2);
                     }
                     else
                     {
                        this.lodajum.push(_loc13_);
                     }
                  }
                  else
                  {
                     this.lahivykir.push(_loc13_);
                  }
               }
            }
         }
         for each (_loc14_ in tulitezu)
         {
            _loc14_.qofeleqir=false;
            _loc6_=_loc14_.garatecif;
            if(_loc6_==null||!(_loc6_.ton==param2))
            {
            }
            else
            {
               _loc14_.qofeleqir=true;
               _loc14_.cude(param1);
               this.lahivykir.push(_loc14_);
            }
         }
         if(this.lodajum.length>0)
         {
            this.lodajum.sortOn(noweseruf,netybyry);
            for each (_loc14_ in this.lodajum)
            {
               _loc14_.draw(this.graphicsData_,param1,param2);
            }
         }
         this.lahivykir.sortOn(noweseruf,netybyry);
         if(UserConfig.data_.drawShadows)
         {
            for each (_loc14_ in this.lahivykir)
            {
               if(!_loc14_.kyjon)
               {
               }
               else
               {
                  _loc14_.drawShadow(this.graphicsData_,param1,param2);
               }
            }
         }
         for each (_loc14_ in this.lahivykir)
         {
            _loc14_.draw(this.graphicsData_,param1,param2);
         }
         if(this.nisys.length>0)
         {
            for each (_loc6_ in this.nisys)
            {
               _loc6_.newuqy(this.graphicsData_,param1,param2);
            }
         }
         if(!(player_==null)&&player_.breath_>=0&&player_.breath_<UserConfig.dilecamad)
         {
            _loc20_=(UserConfig.dilecamad-player_.breath_)/UserConfig.dilecamad;
            _loc21_=Math.abs(Math.sin(param2/300))*0.75;
            zud.alphaMultiplier=_loc20_*_loc21_;
            myqu.transform.colorTransform=zud;
            myqu.visible=true;
            myqu.x=_loc3_.left;
            myqu.y=_loc3_.top;
         }
         else
         {
            myqu.visible=false;
         }
         if(!(player_==null)&&!UserConfig.gyry)
         {
            lyb.visible=true;
            lyb.x=_loc3_.right-10;
            lyb.y=_loc3_.top;
         }
         else
         {
            lyb.visible=false;
         }
         var _loc15_:Graphics = map_.graphics;
         _loc15_.clear();
         _loc15_.drawGraphicsData(this.graphicsData_);
         map_.filters.length=0;
         if(!(player_==null)&&!((player_.condition_&ConditionEffect.punegopo)==0))
         {
            _loc22_=[];
            if(player_.isDrunk())
            {
               _loc23_=20+10*Math.sin(param2/1000);
               _loc22_.push(new BlurFilter(_loc23_,_loc23_));
            }
            if(player_.isBlind())
            {
               _loc22_.push(bigiwavofe);
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