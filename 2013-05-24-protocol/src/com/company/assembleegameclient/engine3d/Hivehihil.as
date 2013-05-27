package com.company.assembleegameclient.engine3d
{
   import __AS3__.vec.Vector;
   import com.company.util.ConversionUtil;


   public class Hivehihil extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hivehihil() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vL_=new Vector.<Number>();
         this.uvts_=new Vector.<Number>();
         this.faces_=new Vector.<Qava>();
         super();
         return;
      }

      private static var lab:Object = new Object();

      public static function zuvoqij(param1:String, param2:String) : void {
         var _loc27_:* = true;
         var _loc28_:* = false;
         var _loc11_:String = null;
         var _loc12_:Hivehihil = null;
         var _loc13_:String = null;
         var _loc14_:* = 0;
         var _loc15_:Array = null;
         var _loc16_:String = null;
         var _loc17_:String = null;
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc20_:String = null;
         var _loc21_:Vector.<int> = null;
         var _loc22_:* = 0;
         var _loc3_:Array = param2.split(new RegExp("\\s*\\n\\s*"));
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         var _loc7_:Object = {};
         var _loc8_:Array = [];
         var _loc9_:String = null;
         var _loc10_:Array = [];
         for each (_loc11_ in _loc3_)
         {
            if(_loc11_.charAt(0)=="#"||_loc11_.length==0)
            {
            }
            else
            {
               _loc15_=_loc11_.split(new RegExp("\\s+"));
               if(_loc15_.length==0)
               {
               }
               else
               {
                  _loc16_=_loc15_.shift();
                  if(_loc16_.length==0)
                  {
                  }
                  else
                  {
                     switch(_loc16_)
                     {
                        case "v":
                           if(_loc15_.length!=3)
                           {
                              return;
                           }
                           _loc4_.push(_loc15_);
                           break;
                        case "vt":
                           if(_loc15_.length!=2)
                           {
                              return;
                           }
                           _loc5_.push(_loc15_);
                           break;
                        case "f":
                           if(_loc15_.length<3)
                           {
                              return;
                           }
                           _loc8_.push(_loc15_);
                           _loc10_.push(_loc9_);
                           for each (_loc17_ in _loc15_)
                           {
                              if(!_loc7_.hasOwnProperty(_loc17_))
                              {
                                 _loc7_[_loc17_]=_loc6_.length;
                                 _loc6_.push(_loc17_);
                              }
                           }
                           break;
                        case "usemtl":
                           if(_loc15_.length!=1)
                           {
                              return;
                           }
                           _loc9_=_loc15_[0];
                           break;
                     }
                  }
               }
            }
         }
         _loc12_=new Hivehihil();
         for each (_loc13_ in _loc6_)
         {
            _loc18_=_loc13_.split("/");
            ConversionUtil.hiwypaku(_loc4_[int(_loc18_[0])-1],_loc12_.vL_);
            if(_loc18_.length>1&&_loc18_[1].length>0)
            {
               ConversionUtil.hiwypaku(_loc5_[int(_loc18_[1])-1],_loc12_.uvts_);
               _loc12_.uvts_.push(0.0);
            }
            else
            {
               _loc12_.uvts_.push(0.0,0.0,0.0);
            }
         }
         _loc14_=0;
         while(_loc14_<_loc8_.length)
         {
            _loc19_=_loc8_[_loc14_];
            _loc20_=_loc10_[_loc14_];
            _loc21_=new Vector.<int>();
            _loc22_=0;
            while(_loc22_<_loc19_.length)
            {
               _loc21_.push(_loc7_[_loc19_[_loc22_]]);
               _loc22_++;
            }
            _loc12_.faces_.push(new Qava(_loc12_,_loc21_,_loc20_==null||!(_loc20_.substr(0,5)=="Solid")));
            _loc14_++;
         }
         _loc12_.rowetog();
         lab[param1]=_loc12_;
         return;
      }

      public static function wasyvohu(param1:String) : Hivehihil {
         return lab[param1];
      }

      public static function gykejehyd(param1:String) : Gokot {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Hivehihil = lab[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return new Gokot(_loc2_);
      }

      public var vL_:Vector.<Number>;

      public var uvts_:Vector.<Number>;

      public var faces_:Vector.<Qava>;

      public function toString() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "";
         _loc1_=_loc1_+("vL("+this.vL_.length+"): "+this.vL_.join()+"\n");
         _loc1_=_loc1_+("uvts("+this.uvts_.length+"): "+this.uvts_.join()+"\n");
         _loc1_=_loc1_+("faces_("+this.faces_.length+"): "+this.faces_.join()+"\n");
         return _loc1_;
      }

      public function rowetog() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.faces_.sort(Qava.bynuqome);
         return;
      }
   }

}