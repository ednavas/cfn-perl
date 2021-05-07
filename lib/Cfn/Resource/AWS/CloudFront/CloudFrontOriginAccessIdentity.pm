# AWS::CloudFront::CloudFrontOriginAccessIdentity generated from spec 34.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity->new( %$_ ) };

package Cfn::Resource::AWS::CloudFront::CloudFrontOriginAccessIdentity {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Id','S3CanonicalUserId' ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','cn-north-1','eu-central-1','eu-west-1','eu-west-2','eu-west-3','sa-east-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity::CloudFrontOriginAccessIdentityConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity::CloudFrontOriginAccessIdentityConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::CloudFront::CloudFrontOriginAccessIdentity::CloudFrontOriginAccessIdentityConfig->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::CloudFront::CloudFrontOriginAccessIdentity::CloudFrontOriginAccessIdentityConfig {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Comment => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has CloudFrontOriginAccessIdentityConfig => (isa => 'Cfn::Resource::Properties::AWS::CloudFront::CloudFrontOriginAccessIdentity::CloudFrontOriginAccessIdentityConfig', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::CloudFront::CloudFrontOriginAccessIdentity - Cfn resource for AWS::CloudFront::CloudFrontOriginAccessIdentity

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::CloudFront::CloudFrontOriginAccessIdentity.

See L<Cfn> for more information on how to use it.

=head1 AUTHOR

    Jose Luis Martinez
    CAPSiDE
    jlmartinez@capside.com

=head1 COPYRIGHT and LICENSE

Copyright (c) 2013 by CAPSiDE
This code is distributed under the Apache 2 License. The full text of the 
license can be found in the LICENSE file included with this module.

=cut
