# User Story Title  
_(Ex. Rotation automatique des mots de passe root)_

---

## 1. Résumé / Contexte  
Brève explication du besoin métier ou technique.  
Pourquoi cette fonctionnalité est-elle demandée ? Quel risque ou objectif couvre-t-elle ?  

_Ex. Pour répondre aux exigences de conformité ISO 27001, les comptes root doivent être régulièrement réinitialisés._

---

## 2. Objectif métier (But)  
**En tant que** : rôle/persona (ex. administrateur PAM)  
**Je veux** : action (ex. automatiser la rotation)  
**Afin de** : objectif (ex. limiter le risque de compromission persistante)  

---

## 3. Portée (Scope)  
Définir ce qui est **inclus** et ce qui est **hors-scope**.  
- Comptes concernés  
- Coffres ciblés  
- Environnements (Prod / QA)  
- Technologies ou intégrations concernées  

---

## 4. Critères d’acceptation (ACs)

- [ ] Le mot de passe est réinitialisé automatiquement toutes les 24 heures  
- [ ] Un log est généré et visible dans l’audit trail  
- [ ] En cas d’échec, une alerte est déclenchée dans Splunk  
- [ ] L’ancien mot de passe n’est plus utilisable  
- [ ] L’action est testable en environnement QA

---

## 5. Contraintes techniques / règles métier

- Utilisation obligatoire du plugin CPM v10  
- Rotation seulement en dehors des heures ouvrées  
- Ne pas notifier les utilisateurs lors de la rotation  
- Conforme aux règles de nommage interne  

---

## 6. Dépendances

- Infrastructure disponible pour test  
- Accès aux coffres concernés  
- Rôle RBAC correctement attribué  
- Coordination avec l’équipe SIEM pour les alertes

---

## 7. Données de test / Données d’entrée

- Compte : `root@linuxprod01`  
- Coffre : `UNIX_ROOT_PROD`  
- Intervalle : 24h  
- Policy : `DefaultRotationTemplate`

---

## 8. Documentation attendue

- Diagramme de flux si nécessaire  
- Mise à jour du wiki technique  
- Fichier de configuration annoté  
- Lien vers la KB CyberArk (si applicable)

---

## 9. Risques ou impacts

- Risque de lockout si rotation échoue sans rollback  
- Impact en cas de désalignement des dépendances LDAP  
- Nécessite validation en comité de sécurité (pré-prod)

---

## 10. Notes / Annexes

- Lien vers demande initiale  
- Captures d’écran ou logs pertinents  
- Historique des incidents similaires

---

> “Cette story sera considérée comme terminée une fois tous les critères validés et une preuve de conformité fournie.”


# EPIC Title  
_(Ex. Sécurisation et automatisation des accès privilégiés sur les serveurs Linux)_  

---

## 1. Contexte / Justification  

Brève explication du **problème métier** ou du **risque** à résoudre.  
Décris pourquoi cette Epic est nécessaire pour l’organisation (conformité, réduction de risques, optimisation).

_Ex. Plusieurs comptes root Linux ne sont pas gérés dans CyberArk, ce qui enfreint la politique de sécurité SOC2 et rend l’audit manuel et risqué._

---

## 2. Objectif stratégique  

Aligner l’Epic avec une **initiative d’entreprise**, un **objectif de conformité** ou une **OKR produit**.

_Ex. Cet Epic vise à sécuriser tous les comptes Unix critiques dans CyberArk d’ici le T3 2025 et garantir la rotation automatisée._

---

## 3. Portée (Scope)

- **Inclus :**
  - Onboarding de comptes root et sudoers
  - Intégration avec le plugin CPM
  - Configuration des alertes Splunk en cas d’échec

- **Hors-scope :**
  - Comptes de services Windows
  - Intégrations avec AWS Secrets Manager

---

## 4. Livrables attendus

| Livrable                        | Description |
|----------------------------------|-------------|
| Intégration CyberArk–Linux       | PVWA, Vault, PSM configurés |
| Politiques de rotation          | Définies et actives |
| Processus d’alerte documenté    | Logs envoyés à SIEM |
| Documentation technique         | Wiki + KB à jour |
| Validation sécurité + test QA   | Scénarios de test validés |

---

## 5. KPIs / Indicateurs de succès  

- 100 % des comptes root managés dans CyberArk  
- Taux d’échec de rotation < 1 %  
- 0 compte non audité dans les environnements critiques  
- Rapport d’audit généré automatiquement et validé  

---

## 6. Dépendances  

- Disponibilité de l’équipe infrastructure Linux  
- Accès aux environnements QA et Prod  
- Coordination avec l’équipe SOC pour les alertes  
- Support CyberArk requis pour configuration avancée

---

## 7. Parties prenantes

- **Responsable Sécurité** (sponsor)  
- **Administrateurs PAM** (technique)  
- **Auditeur interne** (conformité)  
- **DevOps / Infra** (exécution technique)

---

## 8. Stories enfants attendues  

- [ ] US001 – Onboarding comptes root (scope QA)  
- [ ] US002 – Rotation automatisée toutes les 24h  
- [ ] US003 – Déclenchement d’alertes Splunk  
- [ ] US004 – Documentation wiki + KB  
- [ ] US005 – Vérification des sessions PSM

---

## 9. Risques  

- Risque de lockout si la rotation n’est pas maîtrisée  
- Incapacité à auditer certains accès si configuration PSM incomplète  
- Charge opérationnelle élevée si support CyberArk indisponible

---

## 10. Critères de clôture de l’Epic  

- Tous les comptes Unix critiques sont onboardés  
- Rotation et audit automatisés testés en QA et validés  
- Documentation opérationnelle et sécurité complète  
- Rapports d’audit envoyés aux parties prenantes

---

> “Cette Epic est complète lorsque la valeur métier est livrée, les risques sont couverts, et la conformité démontrée.”
