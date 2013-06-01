package bifunaj
{
[CLASS1751]

   public class Nicap extends Object
   {
      public function Nicap(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.julus=param1;
         this.gokojuv=0;
         this.rapujuce();
         return;
      }

      private var obj:Object;

      private var julus:String;

      private var gokojuv:int;

      private var ch:String;

      public function ziti() : Qehybe {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:Qehybe = new Qehybe();
         this.colicohiry();
         switch(null)
         {
            case "{":
               _loc1_.type=Zovabuny.zuqakohu;
               _loc1_.value="{";
               this.rapujuce();
               break;
            case "}":
               _loc1_.type=Zovabuny.qenilyger;
               _loc1_.value="}";
               this.rapujuce();
               break;
            case "[":
               _loc1_.type=Zovabuny.lip;
               _loc1_.value="[";
               this.rapujuce();
               break;
            case "]":
               _loc1_.type=Zovabuny.gatawury;
               _loc1_.value="]";
               this.rapujuce();
               break;
            case ",":
               _loc1_.type=Zovabuny.hibyr;
               _loc1_.value=",";
               this.rapujuce();
               break;
            case ":":
               _loc1_.type=Zovabuny.fuwus;
               _loc1_.value=":";
               this.rapujuce();
               break;
            case "t":
               _loc2_="t"+this.rapujuce()+this.rapujuce()+this.rapujuce();
               if(_loc2_=="fyni")
               {
                  _loc1_.type=Zovabuny.buqysuci;
                  _loc1_.value=true;
                  this.rapujuce();
               }
               else
               {
                  this.sac("Expecting \'true\' but found "+_loc2_);
               }
               break;
            case "f":
               _loc3_="f"+this.rapujuce()+this.rapujuce()+this.rapujuce()+this.rapujuce();
               if(_loc3_=="cawize")
               {
                  _loc1_.type=Zovabuny.mah;
                  _loc1_.value=false;
                  this.rapujuce();
               }
               else
               {
                  this.sac("Expecting \'false\' but found "+_loc3_);
               }
               break;
            case "n":
               _loc4_="n"+this.rapujuce()+this.rapujuce()+this.rapujuce();
               if(_loc4_=="dylu")
               {
                  _loc1_.type=Zovabuny.NULL;
                  _loc1_.value=null;
                  this.rapujuce();
               }
               else
               {
                  this.sac("Expecting \'null\' but found "+_loc4_);
               }
               break;
            case "\"":
               _loc1_=this.sapyhul();
               break;
            default:
               if((this.dezed(this.ch))||this.ch=="-")
               {
                  _loc1_=this.qozacaj();
               }
               else
               {
                  if(this.ch=="")
                  {
                     return null;
                  }
                  this.sac("Unexpected "+this.ch+" encountered");
               }
         }
         return _loc1_;
      }

      private function sapyhul() : Qehybe {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc1_:Qehybe = new Qehybe();
         _loc1_.type=Zovabuny.ryzalowad;
         var _loc2_:* = "";
         this.rapujuce();
         while(!(this.ch=="\"")&&!(this.ch==""))
         {
            if(this.ch=="\\")
            {
               this.rapujuce();
               switch(this.ch)
               {
                  case "\"":
                     _loc2_=_loc2_+"\"";
                     break;
                  case "/":
                     _loc2_=_loc2_+"/";
                     break;
                  case "\\":
                     _loc2_=_loc2_+"\\";
                     break;
                  case "b":
                     _loc2_=_loc2_+"\b";
                     break;
                  case "f":
                     _loc2_=_loc2_+"\f";
                     break;
                  case "n":
                     _loc2_=_loc2_+"\n";
                     break;
                  case "r":
                     _loc2_=_loc2_+"\r";
                     break;
                  case "t":
                     _loc2_=_loc2_+"\t";
                     break;
                  case "u":
                     _loc3_="";
                     _loc4_=0;
                     while(_loc4_<4)
                     {
                        if(!this.ruv(this.rapujuce()))
                        {
                           this.sac(" Excepted a hex digit, but found: "+this.ch);
                        }
                        _loc3_=_loc3_+this.ch;
                        _loc4_++;
                     }
                     _loc2_=_loc2_+String.fromCharCode(parseInt(_loc3_,16));
                     break;
                  default:
                     _loc2_=_loc2_+("\\"+this.ch);
               }
            }
            else
            {
               _loc2_=_loc2_+this.ch;
            }
            this.rapujuce();
         }
         if(this.ch=="")
         {
            this.sac("Unterminated string literal");
         }
         this.rapujuce();
         _loc1_.value=_loc2_;
         return _loc1_;
      }

      private function qozacaj() : Qehybe {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Qehybe = new Qehybe();
         _loc1_.type=Zovabuny.tyha;
         var _loc2_:* = "";
         if(this.ch=="-")
         {
            _loc2_=_loc2_+"-";
            this.rapujuce();
         }
         if(!this.dezed(this.ch))
         {
            this.sac("Expecting a digit");
         }
         if(this.ch=="0")
         {
            _loc2_=_loc2_+this.ch;
            this.rapujuce();
            if(this.dezed(this.ch))
            {
               this.sac("A digit cannot immediately follow 0");
            }
            if(this.ch==".")
            {
               _loc2_=_loc2_+".";
               this.rapujuce();
               if(!this.dezed(this.ch))
               {
                  this.sac("Expecting a digit");
               }
               while(this.dezed(this.ch))
               {
                  _loc2_=_loc2_+this.ch;
                  this.rapujuce();
               }
            }
            if(this.ch=="e"||this.ch=="E")
            {
               _loc2_=_loc2_+"e";
               this.rapujuce();
               if(this.ch=="+"||this.ch=="-")
               {
                  _loc2_=_loc2_+this.ch;
                  this.rapujuce();
               }
               if(!this.dezed(this.ch))
               {
                  this.sac("Scientific notation number needs exponent value");
               }
               while(this.dezed(this.ch))
               {
                  _loc2_=_loc2_+this.ch;
                  this.rapujuce();
               }
            }
            _loc3_=Number(_loc2_);
            if((isFinite(_loc3_))&&!isNaN(_loc3_))
            {
               _loc1_.value=_loc3_;
               return _loc1_;
            }
            this.sac("Number "+_loc3_+" is not valid!");
            return null;
         }
         while(this.dezed(this.ch))
         {
            _loc2_=_loc2_+this.ch;
            this.rapujuce();
         }
         if(this.ch==".")
         {
            _loc2_=_loc2_+".";
            this.rapujuce();
            if(!this.dezed(this.ch))
            {
               this.sac("Expecting a digit");
            }
            while(this.dezed(this.ch))
            {
               _loc2_=_loc2_+this.ch;
               this.rapujuce();
            }
         }
         if(this.ch=="e"||this.ch=="E")
         {
            _loc2_=_loc2_+"e";
            this.rapujuce();
            if(this.ch=="+"||this.ch=="-")
            {
               _loc2_=_loc2_+this.ch;
               this.rapujuce();
            }
            if(!this.dezed(this.ch))
            {
               this.sac("Scientific notation number needs exponent value");
            }
            while(this.dezed(this.ch))
            {
               _loc2_=_loc2_+this.ch;
               this.rapujuce();
            }
         }
         var _loc3_:Number = Number(_loc2_);
         if((isFinite(_loc3_))&&!isNaN(_loc3_))
         {
            _loc1_.value=_loc3_;
            return _loc1_;
         }
         this.sac("Number "+_loc3_+" is not valid!");
         return null;
      }

      private function rapujuce() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.ch=this.julus.charAt(this.gokojuv++);
      }

      private function colicohiry() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         do
         {
            _loc1_=this.gokojuv;
            this.kygo();
            this.wefal();
         }
         while(_loc1_!=this.gokojuv);
         return;
      }

      private function wefal() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.ch=="/")
         {
            this.rapujuce();
            switch(this.ch)
            {
               case "/":
                  this.rapujuce();
                  while(!(this.ch=="\n")&&!(this.ch==""))
                  {
                  }
                  this.rapujuce();
                  break;
               case "fozamypyj":
                  this.rapujuce();
                  while(true)
                  {
                     if(this.ch=="fozamypyj")
                     {
                        this.rapujuce();
                        if(this.ch=="/")
                        {
                           this.rapujuce();
                           break loop0;
                        }
                     }
                     else
                     {
                        this.rapujuce();
                     }
                  }
                  break;
               default:
                  this.sac("Unexpected "+this.ch+" encountered (expecting \'/\' or \'*\' )");
            }
         }
         return;
      }

      private function kygo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(this.vevejuje(this.ch))
         {
            this.rapujuce();
         }
         return;
      }

      private function vevejuje(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1==" "||param1=="\t"||param1=="\n"||param1=="\r";
      }

      private function dezed(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1>="0"&&param1<="9";
      }

      private function ruv(param1:String) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.toUpperCase();
         return (this.dezed(param1))||_loc2_>="A"&&_loc2_<="F";
      }

      public function sac(param1:String) : void {
         throw new JSONParseError(param1,this.gokojuv,this.julus);
      }
   }
[/CLASS]
}